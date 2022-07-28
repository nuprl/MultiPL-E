# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Go HumanEval programs in datasets/go_test.go
import os
import subprocess
import sys
from pathlib import Path


def main():
    directory = Path(Path(__file__).parent, "..",
                     "datasets", "go_test.go").resolve()

    for filename in os.listdir(directory):
        build = subprocess.run(["go", "test", os.path.join(directory, filename)],
                               encoding="utf-8",
                               stdout=subprocess.PIPE,
                               stderr=subprocess.DEVNULL)

        status = None
        stdout = build.stdout
        # write to stderr just so that we can redirect stdout to a csv
        print(stdout, file=sys.stderr)

        if "[setup failed]" in stdout or "[build failed]" in stdout:
            status = "SyntaxError"
        elif "FAIL" in stdout:
            status = "Exception"
        else:
            status = "OK"

        filename = filename.split(".")[0]
        print(f"Go,{filename},{status}")
        # write to stderr just so that we can redirect stdout to a csv, and we can see the output
        print(f"Go,{filename},{status}", file=sys.stderr)


if __name__ == "__main__":
    main()
