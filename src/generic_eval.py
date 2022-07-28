# Authored by Ming-Ho Yee
# Copyright (c) 2022 Northeastern University
#
# This is a helper script for evaluating benchmarks that have been translated to
# different languages.

import argparse
from pathlib import Path

def list_files(directory, ext):
    files_unsorted = directory.glob(f"HumanEval_*{ext}")
    # assumption: base filenames are in the format of HumanEval_X_*
    # Where X is a valid number
    files_sorted = sorted(files_unsorted, key=(lambda s: int(str(s.name).split("_")[1])))
    return files_sorted

def main(eval_script, language, extension):
    args = argparse.ArgumentParser()

    args.add_argument(
        "--directory", type=str, required=True, help="Directory to read test files from"
    )
    args.add_argument(
        "--files",
        type=int,
        nargs="*",
        default=[],
        help="Specify the files to translate by their number, e.g. --files 0 1 2"
    )
    args = args.parse_args()

    directory = Path(args.directory).resolve()

    files_sorted = list_files(directory, extension)
    files_index = []
    if len(args.files) > 0:
        files_index = args.files
    else:
        files_index = range(len(files_sorted))

    total = len(files_index)
    passed = 0
    syntax_error = 0

    results_file = Path(Path(__file__).parent, "..", "results", language.lower() + ".csv").resolve()

    with open(results_file, "w") as f:
        for i in files_index:
            filepath = files_sorted[i]
            res = eval_script(filepath)
            f.write(f"{language},{filepath.stem},{res['status']}\n")
            if res['status'] == "OK":
                passed += 1
            elif res['status'] == "SyntaxError":
                syntax_error += 1
    print (f"Total {total}, Syntax Error {syntax_error}, Passed {passed}")
