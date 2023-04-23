"""
This script checks that the test cases in a completions file are consistent with
test cases in the prompts/ directory.

Rerunning all MultiPL-E prompts can be very costly and time-consuming. So,
when a bug in test cases are fixed, this script can help identify the narrow
set of completions that need to be re-executed.
"""

from multipl_e.util import gunzip_json, eprint
from pathlib import Path
import argparse
import functools
import json
import gzip


# @functools.cache was added in Python 3.9. We are using Python 3.8 for
# compatibility with Discovery.
@functools.lru_cache(maxsize=25)
def get_tests(language: str):
    """
    Returns a map from test case name to test case. Reads the file
    prompts/humaneval-{language}-reworded.json. The file has a list of
    objects with fields "name" and "tests".
    """
    if language == "go_test.go":
        language = "go"
    path = Path("prompts") / f"humaneval-{language}-reworded.json"
    with open(path, "rt") as f:
        data = json.load(f)
    tests = {}
    for obj in data:
        tests[obj["name"]] = obj["tests"]
    return tests


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
    expected_tests = get_tests(data["language"])[data["name"]]
    if expected_tests == data["tests"]:
        return

    results_filename = str(p)[: -len(".json.gz")] + ".results.json.gz"
    if update:
        data["tests"] = expected_tests
        with gzip.open(p, "wt") as f:
            json.dump(data, f)
        Path(results_filename).unlink()
    else:
        print(results_filename)
        


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
    for p in args.path:
        if p.is_dir():
            check_completions_dir(args.update, p)
        else:
            check_completions_file(args.update, p)


if __name__ == "__main__":
    main()
