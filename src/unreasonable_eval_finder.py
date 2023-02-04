# This file is used to find eval results that don't make sense.
# e.g status ok but stderr has output, or lots of them with syntax errors.

import argparse
import json
from pathlib import Path

def main():
    args = argparse.ArgumentParser()

    args.add_argument("--input-dirs", help="The directories of evaluated completions to analyze.", type=Path, required=True)

    args = args.parse_args()

    for dir in args.input_dirs:
        

if __name__ == "main":
    main()