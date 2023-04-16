"""
MultiPL-E creates many .json.gz files.  This script finds the ones that are
corrupted and prints them.
"""

from pathlib import Path
import argparse
from multipl_e.util import gunzip_json

def for_file(path: Path):
    data = gunzip_json(path)
    if data is None:
        print(path)

def for_directory(path: Path):
    for problem_file in path.glob("*.json.gz"):
        for_file(problem_file)

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("dirs", type=Path,  help="Directories with experiments.", nargs="+")
    args = parser.parse_args()
    for path in args.dirs:
        for_directory(path)

if __name__ == "__main__":
    main()

    
