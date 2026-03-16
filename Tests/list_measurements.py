#!/usr/bin/python
import sqlite3
import sys

db_path = sys.argv[1]
conn = sqlite3.connect(db_path)
cur = conn.cursor()

rows = cur.execute(
    """
    SELECT
        m.id,
        m.name,
        m.started_at,
        m.tests_executed,
        m.benchmarks_executed,
        COUNT(pm.id) AS files_total,
        SUM(CASE WHEN COALESCE(pm.watermarks_added, 0) > 0 THEN 1 ELSE 0 END) AS files_watermarked
    FROM measurements m
    LEFT JOIN program_measurements pm ON pm.measurement_id = m.id
    GROUP BY m.id, m.name, m.started_at, m.tests_executed, m.benchmarks_executed
    ORDER BY m.id DESC
    """
).fetchall()

if not rows:
    print("No measurements found.")
    sys.exit(0)

headers = ["id", "name", "started_at", "tests", "benchmarks", "files_total", "files_watermarked"]
table_rows = [[str(row[0]),row[1],row[2],str(row[3]), str(row[4]),str(row[5]),str(row[6] or 0)] for row in rows]

widths = [len(h) for h in headers]
for tr in table_rows:
    for i, value in enumerate(tr):
        widths[i] = max(widths[i], len(value))

print("  ".join(headers[i].ljust(widths[i]) for i in range(len(headers))))
print("  ".join("-" * widths[i] for i in range(len(headers))))
for tr in table_rows:
    print("  ".join(tr[i].ljust(widths[i]) for i in range(len(tr))))

conn.close()
