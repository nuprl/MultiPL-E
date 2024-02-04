"""
This script verifies that every file has the expected number of completions
and every directory has the expected number of files.
"""

from multipl_e.util import gunzip_json, eprint
import datasets
from pathlib import Path
import argparse
from tqdm import tqdm
import json

ALL_LANGUAGES = [
    "cpp",
    "cs",
    "go",
    "java",
    "jl",
    "js",
    "lua",
    "php",
    "pl",
    "r",
    "rb",
    "rkt",
    "rs",
    "scala",
    "sh",
    "swift",
    "ts",
]

def get_problems_per_language():
    # Counting all problems takes stupidly long, thus we cache the results.
    p = Path(__file__).parent / "problems_per_language.json"
    if p.exists():
        return json.loads(p.read_text())

    ppl = {
        lang: len(datasets.load_dataset("nuprl/MultiPL-E", f"humaneval-{lang}", split="test"))
        for lang in ALL_LANGUAGES
    }
    p.write_text(json.dumps(ppl))
    return ppl

PROBLEMS_PER_LANGUAGE = get_problems_per_language()


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
    num_files = 0
    for f in p.iterdir():
        if f.name.endswith(".results.json.gz"):
            continue
        num_files += 1
        check_completions_file(expected, f)
    language = p.name.split("-")[1]
    if language not in PROBLEMS_PER_LANGUAGE:
        return    
    expected_num_files = PROBLEMS_PER_LANGUAGE[language]
    if num_files != expected_num_files:
        print(f"{p}: {num_files} / {expected_num_files}")

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--expected", type=int, default=200, help="The number of expected completions"
    )
    parser.add_argument(
        "path", type=Path, nargs="+", help="Path to a directory or a file"
    )
    args = parser.parse_args()
    for p in tqdm(args.path, total=len(args.path), desc="Path"):
        if p.is_dir():
            check_completions_dir(args.expected, p)
        else:
            check_completions_file(args.expected, p)


if __name__ == "__main__":
    main()
