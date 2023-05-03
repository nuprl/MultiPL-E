"""
This script verifies that every file has the expected number of completions.
"""

from multipl_e.util import gunzip_json, eprint
from pathlib import Path
import argparse
from tqdm import tqdm


def check_completions_file(expected: int, p: Path):
    data = gunzip_json(p)
    if data is None:
        eprint(f"Error reading {p}")
        return
    actual = len(data["completions"])
    if  actual < expected:
        print(f"{p},{actual}")

def check_completions_dir(expected: int, p: Path):
    """
    p is a directory with .json.gz files. Skip the .results.json.gz files
    and check the others.
    """
    for f in p.iterdir():
        if f.name.endswith(".results.json.gz"):
            continue
        check_completions_file(expected, f)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--expected", type=int, default=200, help="The number of expected completions"
    )
    parser.add_argument(
        "path", type=Path, nargs="+", help="Path to a directory or a file"
    )
    args = parser.parse_args()
    for p in tqdm(args.path, total=len(args.path), desc="paths"):
        if p.is_dir():
            check_completions_dir(args.expected, p)
        else:
            check_completions_file(args.expected, p)


if __name__ == "__main__":
    main()
