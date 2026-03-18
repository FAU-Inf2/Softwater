#!/usr/bin/python
import argparse
import datetime
import re
import shlex
import sqlite3
import subprocess
import tempfile
from pathlib import Path


TEST_ROOT = Path(__file__).resolve().parent
REPO_ROOT = TEST_ROOT.parent
TEST_DIRECTORIES = ("Regression", "UnitTests", "c-testsuite")
CXX_EXTENSIONS = {".cpp", ".cc", ".cxx", ".c++"}

parser = argparse.ArgumentParser(
    prog="Softwater Test and Benchmark Suite",
    description="Tests the correctness of a watermarking technique and benchmarks its runtime and binary size impact on a range of test programs",
)
parser.add_argument(
    "--c-compiler",
    help="Defines the command to compile C code files to LLVM IR. Use the [input] and [output] makros as placeholders for the input and output filename",
    default="clang -Wno-implicit-int -Wno-implicit-function-declaration -emit-llvm -O1 -c [input] -o [output]",
)
parser.add_argument(
    "--cpp-compiler",
    help="Defines the command to compile C++ code files to LLVM IR. Use the [input] and [output] makros as placeholders for the input and output filename",
    default="clang++ --std=c++2a -Wno-narrowing -emit-llvm -O1 -c [input] -o [output]",
)
parser.add_argument(
    "--optimize",
    help="Defines the command to optimize LLVM IR. Use the [file] makro as placeholder for the filename",
    default="opt -O1 [file] -o [file]",
)
parser.add_argument(
    "--embed",
    help="Defines the command to embed watermarks in LLVM IR. Use the [file] makro as placeholder for the filename",
    default="",
)
parser.add_argument(
    "--compile",
    help="Defines the command to compile the LLVM IR. Use the [input] and [output] makros as placeholders for the input and output filename",
    default="clang++ [input] -o [output] -O1 -lm",
)
parser.add_argument(
    "-t",
    "--test",
    action="store_true",
    help="Compiles and runs the tests in Regression/, UnitTests/, and c-testsuite/",
)
parser.add_argument(
    "-n",
    "--name",
    help="Names the test run. If left empty, the name is the current timestamp + _test for tests and _bench for benchmark measurements",
)
parser.add_argument(
    "-b",
    "--benchmark",
    action="store_true",
    help="Compiles, tests, and benchmarks all programs in Benchmarks/",
)
parser.add_argument("-s", "--store", default="results.db", help="Database to store the compile logs and results")
parser.suggest_on_error = True

def normalize_output(text: str) -> str:
    return text.replace("\r\n", "\n").replace("\r", "\n")


def parse_ref_output(reference_path: Path) -> tuple[str, int]:
    raw = normalize_output(reference_path.read_text(encoding="utf-8", errors="replace"))
    if raw == "":
        return "", 0
    without_nl = raw.rstrip("\n")
    last_line = without_nl.split("\n")[-1] if without_nl else ""
    match = re.match(r"^(.*)exit\s+(-?\d+)\s*$", last_line)

    if not match:
        return raw, 0

    expected_exit = int(match.group(2))
    line_prefix = match.group(1)
    expected_output = without_nl[: -len(last_line)] + line_prefix
    return expected_output, expected_exit


def parse_wm_count(log_text: str) -> int:
    match = re.search(r"embedded watermark\s+(\d+)\s+times", log_text, flags=re.IGNORECASE)
    return int(match.group(1)) if match else 0


def ensure_schema(conn: sqlite3.Connection) -> None:
    has_measurements = conn.execute(
        "SELECT 1 FROM sqlite_master WHERE type='table' AND name='measurements'"
    ).fetchone()
    if has_measurements:
        return

    schema_path = REPO_ROOT / "results.sql"
    conn.executescript(schema_path.read_text(encoding="utf-8"))
    conn.commit()


def baseline_value(conn: sqlite3.Connection):
    table_info = conn.execute("PRAGMA table_info(measurements)").fetchall()
    baseline_not_null = False
    for row in table_info:
        if row[1] == "baseline_id":
            baseline_not_null = bool(row[3])
            break
    return 0 if baseline_not_null else None


def render_command(command_template: str, replacements: dict[str, str]) -> str:
    command = command_template
    for key, value in replacements.items():
        command = command.replace(f"[{key}]", shlex.quote(value))
    return command


def run_shell_command(command: str, cwd: Path) -> tuple[int, str]:
    process = subprocess.run(command, shell=True, cwd=cwd, capture_output=True, text=True)
    return process.returncode, process.stdout + process.stderr


def ls_test_programs() -> list[Path]:
    programs: list[Path] = []
    for folder in TEST_DIRECTORIES:
        base_path = TEST_ROOT / folder
        if not base_path.exists():
            continue
        for source in base_path.rglob("*"):
            if not source.is_file() or source.suffix not in {".c", ".cpp", ".cc", ".cxx", ".c++", ".C"}:
                continue
            reference_path = source.with_suffix(".reference_output")
            if reference_path.exists():
                programs.append(source)
    programs.sort(key=lambda path: path.relative_to(TEST_ROOT).as_posix())
    return programs


def ensure_program(conn: sqlite3.Connection, program_name: str) -> int:
    conn.execute("INSERT OR IGNORE INTO programs(name) VALUES (?)", (program_name,))
    row = conn.execute("SELECT id FROM programs WHERE name = ?", (program_name,)).fetchone()
    return row[0]

args = parser.parse_args()

if args.test:
    db_path = Path(args.store)
    run_name = args.name or f"{datetime.datetime.now().strftime('%Y%m%d_%H%M%S')}_test"
    programs = ls_test_programs()

    conn = sqlite3.connect(db_path)
    ensure_schema(conn)

    measurement_id = conn.execute(
        """
        INSERT INTO measurements (
            name, started_at, c_compiler_cmd, cpp_compiler_cmd, opt_cmd,
            embedding_cmd, compile_cmd, tests_executed, benchmarks_executed, baseline_id
        ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """,
        (run_name,
         datetime.datetime.now().isoformat(timespec="seconds"),
         args.c_compiler,
         args.cpp_compiler,
         args.optimize,
         args.embed,
         args.compile,
         True, False,
         baseline_value(conn)),
    ).lastrowid
    conn.commit()

    passed_count = 0
    failed_count = 0

    with tempfile.TemporaryDirectory(prefix="softwater-test-run-") as temp_root:
        temp_root_path = Path(temp_root)
        for source_path in programs:
            rel_name = source_path.relative_to(TEST_ROOT).as_posix()
            ref_path = source_path.with_suffix(".reference_output")
            expected_output, expected_exit = parse_ref_output(ref_path)
            build_dir = temp_root_path / source_path.parent.relative_to(TEST_ROOT)
            build_dir.mkdir(parents=True, exist_ok=True)
            llvm_path = build_dir / f"{source_path.stem}.ll"
            binary_path = build_dir / f"{source_path.stem}.out"
            comp_temp = args.cpp_compiler if source_path.suffix in CXX_EXTENSIONS else args.c_compiler
            to_llvm_cmd = render_command(
                comp_temp, {"input": str(source_path), "output": str(llvm_path)}
            )
            optimize_cmd = render_command(args.optimize, {"file": str(llvm_path)})
            embed_cmd = render_command(args.embed, {"file": str(llvm_path)}) if args.embed.strip() else ""
            comp_cmd = render_command(
                args.compile, {"input": str(llvm_path), "output": str(binary_path)}
            )
            step_ok = True
            embedding_log = ""

            rc, log = run_shell_command(to_llvm_cmd, cwd=REPO_ROOT)
            if rc != 0:
                step_ok = False
                embedding_log = f"[compile-to-llvm]\n{log}"

            if step_ok:
                rc, log = run_shell_command(optimize_cmd, cwd=REPO_ROOT)
                if rc != 0:
                    step_ok = False
                    embedding_log = f"[optimize]\n{log}"

            if step_ok and embed_cmd:
                rc, log = run_shell_command(embed_cmd, cwd=REPO_ROOT)
                embedding_log = log
                if rc != 0:
                    step_ok = False
                    embedding_log = f"[embed]\n{log}"

            if step_ok:
                rc, log = run_shell_command(comp_cmd, cwd=REPO_ROOT)
                if rc != 0:
                    step_ok = False
                    if embedding_log:
                        embedding_log = f"{embedding_log}\n[compile-binary]\n{log}"
                    else:
                        embedding_log = f"[compile-binary]\n{log}"

            runtime_ok = False
            actual_output = ""
            actual_exit = None

            if step_ok:
                try:
                    result = subprocess.run(
                        [str(binary_path)],
                        cwd=source_path.parent,
                        capture_output=True,
                        text=True,
                        timeout=30,
                    )
                    runtime_ok = True
                    actual_output = normalize_output(result.stdout)
                    actual_exit = result.returncode
                except subprocess.TimeoutExpired as ex:
                    actual_output = normalize_output((ex.stdout or "") + (ex.stderr or ""))
                    actual_exit = None

            test_passed = step_ok and runtime_ok and actual_output == expected_output and actual_exit == expected_exit

            watermark_count = parse_wm_count(embedding_log)
            binary_size = binary_path.stat().st_size if binary_path.exists() else None

            program_id = ensure_program(conn, rel_name)
            program_measurement_id = conn.execute(
                """
                INSERT INTO program_measurements (
                    measurement_id, program_id, embedding_log, watermarks_added, binary_size_bytes
                ) VALUES (?, ?, ?, ?, ?)
                """,
                (measurement_id, program_id, embedding_log, watermark_count, binary_size),
            ).lastrowid

            conn.execute(
                "INSERT INTO test_results (program_measurement_id, passed) VALUES (?, ?)",
                (program_measurement_id, test_passed),
            )
            conn.commit()

            if test_passed:
                passed_count += 1
                print(f"PASS {rel_name}")
            else:
                failed_count += 1
                print(f"FAIL {rel_name}", "output differs" if actual_output != expected_output else ("exit differs" if actual_exit != expected_exit else "build error"))

    conn.close()
    print(f"Finished test run '{run_name}': {passed_count} passed, {failed_count} failed, {passed_count + failed_count} total")
elif args.benchmark:
    print("Benchmarking is not implemented in this script yet.")
else:
    parser.print_help()
