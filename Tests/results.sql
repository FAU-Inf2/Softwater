CREATE TABLE measurements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    started_at TIMESTAMP NOT NULL,

    c_compiler_cmd TEXT NOT NULL,
    cpp_compiler_cmd TEXT NOT NULL,
    opt_cmd TEXT NOT NULL,
    embedding_cmd TEXT NOT NULL,
    compile_cmd TEXT NOT NULL,

    tests_executed BOOLEAN NOT NULL,
    benchmarks_executed BOOLEAN NOT NULL,

    baseline_id INTEGER NOT NULL,
    FOREIGN KEY(baseline_id) REFERENCES measurements(id)
);


CREATE TABLE programs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE
);


CREATE TABLE program_measurements (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    measurement_id INTEGER NOT NULL,
    program_id INTEGER NOT NULL,

    embedding_log TEXT,
    watermarks_added INTEGER,
    binary_size_bytes INTEGER,

    FOREIGN KEY(measurement_id) REFERENCES measurements(id),
    FOREIGN KEY(program_id) REFERENCES programs(id),

    UNIQUE(measurement_id, program_id)
);


CREATE TABLE test_results (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    program_measurement_id INTEGER NOT NULL,

    passed BOOLEAN NOT NULL,

    FOREIGN KEY(program_measurement_id)
        REFERENCES program_measurements(id),

    UNIQUE(program_measurement_id)
);


CREATE TABLE benchmark_runs (
    id INTEGER PRIMARY KEY AUTOINCREMENT,

    program_measurement_id INTEGER NOT NULL,

    iteration INTEGER NOT NULL,

    runtime_seconds REAL,

    FOREIGN KEY(program_measurement_id)
        REFERENCES program_measurements(id),

    UNIQUE(program_measurement_id, iteration)
);
