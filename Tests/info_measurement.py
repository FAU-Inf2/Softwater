#!/usr/bin/python
import sqlite3
import sys

db_path = sys.argv[1]
measurement_name = sys.argv[2]

conn = sqlite3.connect(db_path)
cur = conn.cursor()

rows = cur.execute(
    """
    SELECT
        m.id,
        m.started_at,
        COUNT(pm.id) AS total_files,
        SUM(CASE WHEN COALESCE(pm.watermarks_added, 0) > 0 THEN 1 ELSE 0 END) AS watermarked_files,
        SUM(COALESCE(pm.watermarks_added, 0)) AS total_watermarks
    FROM measurements m
    LEFT JOIN program_measurements pm ON pm.measurement_id = m.id
    WHERE m.name = ?
    GROUP BY m.id, m.started_at
    ORDER BY m.id
    """,
    (measurement_name,),
).fetchall()

if not rows:
    print(f"No measurement found with name '{measurement_name}'")
    sys.exit(1)

for measurement_id, started_at, total_files, watermarked_files, total_watermarks in rows:
    print(f"measurement_id: {measurement_id}")
    print(f"started_at: {started_at}")
    print(f"files_total: {total_files}")
    print(f"files_watermarked: {watermarked_files or 0}")
    print(f"watermarks_total: {total_watermarks or 0}")
    print("")

conn.close()
