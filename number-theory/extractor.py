#!/usr/bin/env python3
import subprocess
import tempfile
import os
import argparse
import sys
import re
from functools import reduce


class colors:
    RED = '\033[91m'
    GREEN = '\033[92m'
    BLUE = '\033[94m'
    YELLOW = '\033[93m'
    RESET = '\033[0m'


def parse_key_file(key_path):
    """
    Parse the key file and extract signature and watermark entries.
    Returns: (signature, watermarks) where watermarks is a list of tuples
    """
    signature = None
    watermarks = []

    with open(key_path, 'r') as file:
        for line in file:
            line = line.strip()
            if not line:
                continue

            # Check for signature line
            if line.startswith('# signature='):
                signature = int(line.split('=')[1])
                continue

            # Skip other comment lines
            if line.startswith('#'):
                continue

            # Parse watermark entry: line column iterations var_name expected_value
            s_values = line.split()
            if len(s_values) >= 5:
                line_nr = int(s_values[0])
                column_nr = int(s_values[1])
                steps = int(s_values[2])
                var_name = s_values[3]
                expected_res = int(s_values[4])
                watermarks.append((line_nr, column_nr, steps, var_name, expected_res))

    return signature, watermarks


def extract_watermark_value(lldb_path, filename, line_nr, column_nr, steps, var_name, program_input=None, program_args=None):
    """
    Run LLDB to extract the value of a variable at a specific iteration.
    Returns the extracted value or None if extraction failed.
    """
    # Try with column first, then without column as fallback
    for use_column in [True, False]:
        # Build the LLDB command script
        if use_column and column_nr > 0:
            cmd_str = f"breakpoint set --line {line_nr} --column {column_nr}\n"
        else:
            cmd_str = f"breakpoint set --line {line_nr}\n"

        # Handle program arguments
        if program_args:
            args_escaped = ' '.join(f'"{a}"' if ' ' in a else a for a in program_args)
            cmd_str += f"settings set target.run-args {args_escaped}\n"

        # Handle stdin input
        if program_input:
            # Create a temporary file for stdin input
            with tempfile.NamedTemporaryFile(mode='w', delete=False, suffix='.stdin') as stdin_file:
                stdin_file.write(program_input)
                stdin_path = stdin_file.name
            cmd_str += f"settings set target.input-path {stdin_path}\n"
        else:
            stdin_path = None

        cmd_str += "run\n"

        # Continue to the desired iteration
        for _ in range(steps - 1):
            cmd_str += "c\n"

        cmd_str += f"frame variable {var_name}\n"
        cmd_str += "exit\n"

        # Write script to temp file
        with tempfile.NamedTemporaryFile(mode='w', delete=False, suffix='.lldb') as script_file:
            script_file.write(cmd_str)
            script_file_path = script_file.name

        try:
            cmd = [lldb_path, "--batch", "--source", script_file_path, filename]
            process = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, universal_newlines=True)
            output, errors = process.communicate(timeout=120)

            # Check if breakpoint was resolved
            if "no locations (pending)" in output and use_column:
                # Try without column
                os.unlink(script_file_path)
                if stdin_path and os.path.exists(stdin_path):
                    os.unlink(stdin_path)
                continue

            # Parse the variable value from output
            if output:
                # Look for pattern like "var_name = value"
                pattern = rf"{re.escape(var_name)}\s*=\s*(-?\d+)"
                match = re.search(pattern, output)
                if match:
                    return int(match.group(1))

                # Check for variable not available
                if "<variable not available>" in output:
                    return None

            return None

        except subprocess.TimeoutExpired:
            process.kill()
            return None
        except Exception as e:
            print(f"{colors.YELLOW}Warning: {e}{colors.RESET}", file=sys.stderr)
            return None
        finally:
            if os.path.exists(script_file_path):
                os.unlink(script_file_path)
            if stdin_path and os.path.exists(stdin_path):
                os.unlink(stdin_path)

    return None


def generate_primes(n):
    """Generate the first n prime numbers."""
    primes = []
    num = 2
    while len(primes) < n:
        is_prime = True
        for p in primes:
            if p * p > num:
                break
            if num % p == 0:
                is_prime = False
                break
        if is_prime:
            primes.append(num)
        num += 1
    return primes


def extended_gcd(a, b):
    """Extended Euclidean Algorithm."""
    if a == 0:
        return b, 0, 1
    gcd, x1, y1 = extended_gcd(b % a, a)
    x = y1 - (b // a) * x1
    y = x1
    return gcd, x, y


def mod_inverse(a, m):
    """Find modular multiplicative inverse of a mod m."""
    gcd, x, _ = extended_gcd(a % m, m)
    if gcd != 1:
        return None
    return (x % m + m) % m


def reconstruct_signature_crt(bi_values, primes):
    """
    Reconstruct the signature S using Chinese Remainder Theorem.
    """
    if len(bi_values) != len(primes):
        return None

    # N = product of all primes
    N = reduce(lambda x, y: x * y, primes, 1)

    # CRT reconstruction
    S = 0
    for bi, ni in zip(bi_values, primes):
        Ri = N // ni  # Product of all primes except ni
        xi = mod_inverse(Ri, ni)  # Ri * xi ≡ 1 (mod ni)
        if xi is None:
            return None
        S += bi * Ri * xi

    return S % N


def run_extraction(key_path, filename, lldb_path, program_input=None, program_args=None, verbose=False):
    """
    Main extraction routine.
    """
    # Parse key file
    expected_signature, watermarks = parse_key_file(key_path)

    if not watermarks:
        print(f"{colors.RED}ERROR: No watermarks found in key file{colors.RESET}")
        return False

    print(f"Found {len(watermarks)} watermark(s) to verify")
    if expected_signature is not None:
        print(f"Expected signature: {expected_signature}")

    # Generate the primes used for CRT (first k primes)
    primes = generate_primes(len(watermarks))
    print(f"Using primes: {primes}")

    extracted_bi = []
    correct_count = 0

    for i, (line_nr, column_nr, steps, var_name, expected_bi) in enumerate(watermarks):
        if steps > 50000:
            print(f"{colors.BLUE}SKIPPED{colors.RESET} (steps={steps} > 50000)")
            extracted_bi.append(None)
            continue

        if verbose:
            print(f"\nExtracting watermark {i+1}: line={line_nr}, col={column_nr}, "
                  f"iterations={steps}, var={var_name}, expected_b={expected_bi}")

        actual_value = extract_watermark_value(
            lldb_path, filename, line_nr, column_nr, steps, var_name,
            program_input=program_input, program_args=program_args
        )

        if actual_value is None:
            print(f"  {colors.RED}FAILED{colors.RESET} - Could not extract value for {var_name}")
            extracted_bi.append(None)
        elif actual_value == expected_bi:
            print(f"  {colors.GREEN}OK{colors.RESET} - {var_name} = {actual_value} (expected {expected_bi})")
            correct_count += 1
            extracted_bi.append(actual_value)
        else:
            print(f"  {colors.RED}MISMATCH{colors.RESET} - {var_name} = {actual_value} (expected {expected_bi})")
            extracted_bi.append(actual_value)

    print("\n" + "=" * 40)

    # Try to reconstruct signature using CRT
    valid_bi = [b for b in extracted_bi if b is not None]
    valid_primes = [p for p, b in zip(primes, extracted_bi) if b is not None]

    if valid_bi and len(valid_bi) == len(watermarks):
        reconstructed_sig = reconstruct_signature_crt(valid_bi, valid_primes)
        print(f"Reconstructed signature (CRT): {reconstructed_sig}")

        if expected_signature is not None:
            if reconstructed_sig == expected_signature:
                print(f"{colors.GREEN}SIGNATURE VERIFIED{colors.RESET}")
            else:
                print(f"{colors.RED}SIGNATURE MISMATCH{colors.RESET} (expected {expected_signature})")

    # Summary
    print("=" * 40)
    if correct_count == len(watermarks):
        print(f"{colors.GREEN}SUCCESS{colors.RESET}")
        print(f"{colors.GREEN}{correct_count}/{len(watermarks)} watermarks verified{colors.RESET}")
        return True
    else:
        print(f"{colors.RED}FAILURE{colors.RESET}")
        print(f"{colors.RED}{correct_count}/{len(watermarks)} watermarks verified{colors.RESET}")
        return False


def main():
    parser = argparse.ArgumentParser(
        description='Extract and verify Number-Theory watermarks from a program',
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
  # Basic usage
  %(prog)s /usr/bin/lldb ./program key.txt

  # Program that reads from stdin
  %(prog)s /usr/bin/lldb ./program key.txt --input "hello world"

  # Program that reads from a file
  %(prog)s /usr/bin/lldb ./program key.txt --input-file input.txt

  # Program with command-line arguments
  %(prog)s /usr/bin/lldb ./program key.txt --args arg1 arg2
        """
    )
    parser.add_argument('lldb_path', type=str, help='Path to lldb executable')
    parser.add_argument('program', type=str, help='Path to the watermarked program')
    parser.add_argument('key_file', type=str, help='Path to the watermark key file')
    parser.add_argument('--input', '-i', type=str, default=None,
                        help='Input string to provide to the program via stdin')
    parser.add_argument('--input-file', '-f', type=str, default=None,
                        help='File containing input to provide to the program via stdin')
    parser.add_argument('--args', '-a', nargs='*', default=None,
                        help='Command-line arguments to pass to the program')
    parser.add_argument('--verbose', '-v', action='store_true',
                        help='Enable verbose output')

    args = parser.parse_args()

    # Handle input
    program_input = None
    if args.input:
        program_input = args.input
    elif args.input_file:
        with open(args.input_file, 'r') as f:
            program_input = f.read()

    success = run_extraction(
        args.key_file,
        args.program,
        args.lldb_path,
        program_input=program_input,
        program_args=args.args,
        verbose=args.verbose
    )

    sys.exit(0 if success else 1)


if __name__ == '__main__':
    main()
