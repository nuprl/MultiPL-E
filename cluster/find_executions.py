# Do not use this program directly. See find_executions.sbatch.
from pathlib import Path
import argparse
from datasets import load_dataset
import sys
from typing import Optional, List
import gzip
import json

def eprint(*args, **kwargs):
    print(*args, file=sys.stderr, **kwargs)


def gunzip_json(path: Path) -> Optional[dict]:
    """
    Reads a .json.gz file, and produces None if any error occurred.
    """
    try:
        with gzip.open(path, "rt") as f:
            return json.load(f)
    except Exception as e:
        return None

def process_experiment(host: Path, container: Path, dir: Path):
    """
    Processes all .json.gz files in an experiment path. If the corresponding .results.json.gz
    does not exist or has fewer results than completions, print the name of the .json.gz file.
    """

    host = host.absolute()
    dir = dir.absolute()

    if not dir.exists():
        eprint(f"Experiment path does not exist: {dir()}")
        return

    for completions_path in dir.glob("**/*.json.gz"):
        if completions_path.name.endswith(".results.json.gz"):
            continue

        completions_path_for_container = container / completions_path.relative_to(host)

        results_path = completions_path.parent / (
            completions_path.name[:-8] + ".results.json.gz"
        )

        if not results_path.exists():
            print(completions_path_for_container)
            continue

        completions_json = gunzip_json(completions_path)
        results_json = gunzip_json(results_path)

        if completions_json is None:
            eprint(f"Failed to load {completions_path}")
            continue
        elif results_json is None:
            pass
        elif len(results_json["results"]) >= len(completions_json["completions"]):
            continue

        print(completions_path_for_container)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--host", type=Path, required=True)
    parser.add_argument("--container", type=Path, required=True)
    parser.add_argument("dir", type=Path)
    args = parser.parse_args()

    args = vars(args)
    process_experiment(**args)




if __name__ == "__main__":
    main()
