SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DB_PATH="${1:-${SCRIPT_DIR}/results.db}"

if [[ ! -f "$DB_PATH" ]]; then
  echo "error: database file not found: $DB_PATH" >&2
  exit 1
fi

sqlite3 "$DB_PATH" <<'SQL'
PRAGMA foreign_keys = ON;
BEGIN;
DELETE FROM test_results;
DELETE FROM benchmark_runs;
DELETE FROM program_measurements;
DELETE FROM measurements;
DELETE FROM sqlite_sequence WHERE name IN ('test_results', 'benchmark_runs', 'program_measurements', 'measurements');
COMMIT;
SQL

echo "Cleared all measurement data from: $DB_PATH"
