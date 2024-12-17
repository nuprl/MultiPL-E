#!/usr/bin/env python3
"""
This script converts MultiPL-E results into a DuckDB database.
It provides two subcommands:
1. init - creates a new database with the required schema
2. insert - inserts data from a directory of results
"""
import argparse
from pathlib import Path
import duckdb
import gzip
import json
from typing import Optional, List
from collections import defaultdict
import datetime
from tqdm.auto import tqdm

# Epoch start time
time_1970 = datetime.datetime(1970, 1, 1)

def gunzip_json(path: Path) -> Optional[dict]:
    """
    Reads a .json.gz file, but produces None if any error occurs.
    """
    try:
        with gzip.open(path, "rt") as f:
            return json.load(f)
    except Exception as e:
        return None


def init_db(args):
    """Initialize a new DuckDB database with the experiment and completions tables schema"""
    conn = duckdb.connect(str(args.db_path))
    
    # The comments below are examples values for each column.
    conn.execute("""
        CREATE SEQUENCE IF NOT EXISTS experiment_id START 1;

        CREATE TABLE IF NOT EXISTS experiment (
            id INTEGER PRIMARY KEY DEFAULT NEXTVAL('experiment_id'),
            base_dataset VARCHAR NOT NULL, -- humaneval, mbpp, ...
            language VARCHAR NOT NULL, -- python, cpp, ...
            model VARCHAR NOT NULL, -- gpt-4o, claude-3-5-sonnet, ...
            variation VARCHAR NOT NULL, -- reworded, ...
            problem VARCHAR NOT NULL, -- HumanEval_53_add, ...
            temperature DOUBLE NOT NULL,
            top_p DOUBLE NOT NULL,
            max_tokens INTEGER NOT NULL,
            stop_tokens VARCHAR[] NOT NULL
        );
        CREATE TABLE IF NOT EXISTS completions (
            experiment_id INTEGER NOT NULL REFERENCES experiment(id),
            prompt VARCHAR NOT NULL,
            completion VARCHAR NOT NULL,
            tests VARCHAR NOT NULL,                 
            program VARCHAR NOT NULL, -- the complete program, including tests
            stdout VARCHAR NOT NULL,
            stderr VARCHAR NOT NULL,
            exit_code INTEGER, -- NULL exit_code on timeouts.
            status VARCHAR NOT NULL,
            timestamp TIMESTAMP NOT NULL,
            count INTEGER NOT NULL,
            PRIMARY KEY (experiment_id, prompt,completion)
        )
    """)
    
    print(f"Initialized database at {args.db_path}")
    conn.close()

def process_experiment(conn: duckdb.DuckDBPyConnection, experiment_path: Path):

    tqdm.write(f"Processing experiment {experiment_path}")
    base_dataset, language, model, temperature, variation = experiment_path.name.split("-")

    # NOTE(arjun): This highlights the bad design of the MultiPL-E results
    # format.
    created_experiment_record = False

    for executions_path in experiment_path.glob("*.results.json.gz"):

        executions = gunzip_json(executions_path)
        completions_path = executions_path.parent / (
            executions_path.name[:-16] + ".json.gz"
        )
        completions = gunzip_json(completions_path)
        if completions is None or executions is None:
            continue
        
        # On the first completion/execution, we create the experiment record.
        if not created_experiment_record:
            # Check if an experiment record already exists with these values.
            # If so, we assume that the experiment has already been processed
            # and skip the whole directory.
            existing_experiment = conn.execute("""
                SELECT id FROM experiment
                WHERE base_dataset = ? AND language = ? AND model = ? AND variation = ? AND problem = ? AND temperature = ?
            """, (base_dataset, language, model, variation, completions["name"], temperature)).fetchone()

            if existing_experiment:
                tqdm.write(f"Experiment record already exists with id {existing_experiment[0]}")
                return
            # Create the experiment record
            conn.execute("""
                INSERT INTO experiment (
                    base_dataset, language, model, variation, problem, temperature, top_p, max_tokens, stop_tokens
                ) VALUES (
                    ?, ?, ?, ?, ?, ?, ?, ?, ?
                )
                RETURNING id
            """, (
                base_dataset, language, model, variation, completions["name"],
                temperature, executions.get("top_p", 0.95), executions.get("max_tokens", 512),
                str(completions["stop_tokens"])
            ))

            experiment_id = conn.fetchone()[0]
            tqdm.write(f"Created experiment record {experiment_id}")
            created_experiment_record = True

        
        for completion, result in zip(completions["completions"], executions["results"]):
            conn.execute("""
                INSERT INTO completions (
                    experiment_id, prompt,completion, tests, program, stdout, stderr, exit_code, status, timestamp, count
                ) VALUES (
                    ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 1
                )
                ON CONFLICT(experiment_id, prompt,completion) DO UPDATE SET count = count + 1
            """, (
                experiment_id,
                completions["prompt"],
                completion,
                completions["tests"],
                result["program"],
                result["stdout"],
                result["stderr"],
                result["exit_code"],
                result["status"],
                datetime.datetime.fromtimestamp(result["timestamp"]) if "timestamp" in result else time_1970,
            ))

def pass1(conn: duckdb.DuckDBPyConnection):
    conn.execute("""
        WITH prompt_pass_rates AS (
            SELECT 
                e.id AS experiment_id,
                c.prompt,
                SUM(CASE WHEN c.status = 'OK' THEN c.count ELSE 0 END) * 1.0 / SUM(c.count) AS pass_rate,
                SUM(c.count) as count,
            FROM 
                main.experiment e
            JOIN 
                main.completions c
            ON 
                e.id = c.experiment_id
            GROUP BY 
                e.id, c.prompt,
        )
        SELECT 
            p.experiment_id,
            ANY_VALUE(e.base_dataset) as base_dataset,
            ANY_VALUE(e.model) as model,
            ANY_VALUE(e.language) as language,
            ANY_VALUE(e.temperature) as temperature,
            MAX(p.count) AS max_completions,
            MIN(p.count) AS min_completions,
            ROUND(AVG(p.pass_rate), 2) AS pass1,
        FROM 
            prompt_pass_rates p
        JOIN
            main.experiment e
        ON e.id = p.experiment_id
        GROUP BY 
            experiment_id;
    """)
    for item in conn.fetchall():
        print(item)


def process_experiments(conn: duckdb.DuckDBPyConnection, experiment_paths: List[Path]):
    for experiment_path in tqdm(experiment_paths):
        conn.sql("BEGIN TRANSACTION")
        process_experiment(conn, experiment_path)
        conn.sql("COMMIT")

def main():
    parser = argparse.ArgumentParser(description="Convert MultiPL-E results to DuckDB")
    parser.add_argument("--db", dest="db_path", type=Path, default="completions.db",
                      help="Path to the DuckDB database file")
    
    subparsers = parser.add_subparsers(dest="command", required=True)
    
    # Init command
    init_parser = subparsers.add_parser("init", help="Initialize a new database")
    
    # Insert command
    insert_parser = subparsers.add_parser("insert", help="Insert data from a directory of experiments")
    insert_parser.add_argument("experiments", nargs="+", type=Path,
                             help="Path to the experiment directory")
    
    pass1_parser = subparsers.add_parser("pass1", help="Compute pass1")
    
    args = parser.parse_args()
    
    if args.command == "init":
        init_db(args)
    elif args.command == "insert":
        with duckdb.connect(str(args.db_path)) as conn:
            process_experiments(conn, args.experiments)
    elif args.command == "pass1":
        with duckdb.connect(str(args.db_path)) as conn:
            pass1(conn)


if __name__ == "__main__":
    main()

