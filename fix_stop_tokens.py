"""
This script verifies that every completion omits <|endoftext|>. If --update
is given, it strips it off.
"""

from multipl_e.util import gunzip_json, eprint
from pathlib import Path
import argparse
import json
import gzip
from tqdm import tqdm


def check_completions_file(update: bool, p: Path):
    """
    p is a .json.gz file with fields "name", "tests" and "language". Check that
    the tests in the file are consistent with the tests in the prompts/
    directory and print the name of the associated results file if they are not.
    """
    data = gunzip_json(p)
    if data is None:
        eprint(f"Error reading {p}")
        return
    issues = 0
    new_completions = [ ]
    for s in data["completions"]:
        if "<|endoftext|>" in s:
            issues += 1
            s = s.split("<|endoftext|>", maxsplit=1)[0]
        new_completions.append(s)
    if issues == 0:
        return

    print(p,issues)

    if not update:
        return
    
    data["completions"] = new_completions
    with gzip.open(p, "wt") as f:
        json.dump(data, f)
        results_path = Path(str(p)[: -len(".json.gz")] + ".results.json.gz")
        if results_path.exists():
            results_path.unlink()

def check_completions_dir(update: bool, p: Path):
    """
    p is a directory with .json.gz files. Skip the .results.json.gz files
    and check the others.
    """
    for f in p.iterdir():
        if f.name.endswith(".results.json.gz"):
            continue
        check_completions_file(update, f)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument(
        "--update", action="store_true", help="Update the completions files"
    )
    parser.add_argument(
        "path", type=Path, nargs="+", help="Path to a directory or a file"
    )
    args = parser.parse_args()
    for p in tqdm(args.path, total=len(args.path), desc="paths"):
        if p.is_dir():
            check_completions_dir(args.update, p)
        else:
            check_completions_file(args.update, p)


if __name__ == "__main__":
    main()
