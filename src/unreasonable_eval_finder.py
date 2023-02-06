# This file is used to find eval results that don't make sense.
# e.g status ok but stderr has output, or lots of them with syntax errors.

import argparse
import json
from pathlib import Path
import itertools
import json
import gzip
import os

def open_json(fpath: Path, mode: str):
        return  gzip.open(fpath, mode + "t") if fpath.suffix == ".gz" else open(fpath, mode)

def main():
    args = argparse.ArgumentParser()
    args.add_argument("--input-dir", help="The directory of evaluated completions to analyze.", type=Path, required=True)
    args = args.parse_args()

    filepaths = [p for p in itertools.chain(Path(args.input_dir).glob("*.results.json"), Path(args.input_dir).glob("*.results.json.gz"))]
    if len(filepaths) == 0:
        print("No files to analyze.")
        return
    
    strangely_passed = []
    possible_translator_error = []
    for path in filepaths:
        with open_json(path, "r") as f:
            results = json.load(f)["results"]
        for i in range(len(results)):
            # Find any files that have status ok but stuff in stderr
            if results[i]["status"] == "OK" and (results[i]["exit_code"] != 0 or "error" in results[i]["stderr"].lower()
                                                 or "exception" in results[i]["stderr"].lower()):
                strangely_passed.append(f"{os.path.basename(path)}-{i}")
        # Find any files that have all their exceptions being syntax errors
        if all(["syntax" in r["stderr"].lower() for r in results]):
            possible_translator_error.append(os.path.basename)
    
    # Report strange behavior
    print("These files passed with a non-zero exit code or with non-warning output to stderr:")
    [print(p) for p in strangely_passed]
    print("These files only had syntax errors pointing to a possible error with the prompt converter:")
    [print(p) for p in possible_translator_error]

if __name__ == "__main__":
    main()