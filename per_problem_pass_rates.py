"""
This script reports the per problem pass rates for every problem in a list of 
directories. Each argument must be the name of a directory, and the script
assumes that every directory has files named *.results.json.gz. The script
also assumes that every directory is named BASEDATASET-*-MODELNAME-... .

This script does NOT calculate pass@k.
"""

from pathlib import Path
import argparse
from multipl_e.util import gunzip_json, eprint

def for_file(base_dataset: str,  model: str, path: Path):
    data = gunzip_json(path)
    if data is None:
        eprint(f"Failed to read {path}")
        return

    n = len(data["results"])
    c = len([True for r in data["results"] if r["status"] == "OK" and r["exit_code"] == 0])
    name = data["name"]
    language = data["language"]
    temperature = data["temperature"] if "temperature" in data else 0.2
    print(f"{base_dataset},{name},{model},{language},{temperature},{c},{n}")


def for_directory(path: Path):
    split_name = path.name.split("-")
    base_dataset = split_name[0]
    model = split_name[2]
    for problem_file in path.glob("*.results.json.gz"):
        for_file(base_dataset, model, problem_file)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--suppress-header", action="store_true", help="Suppress the header")
    parser.add_argument("dirs", type=Path,  help="Directories with results. ", nargs="+")
    args = parser.parse_args()
    if not args.suppress_header:
        print("BaseDataset,ProblemName,Model,Language,Temperature,NumPassed,NumCompletions")
    for path in args.dirs:
        for_directory(path)

if __name__ == "__main__":
    main()
