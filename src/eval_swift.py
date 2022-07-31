# Authored by Arjun Guha, edited by Federico Cassano
# Copyright (c) 2022, Roblox Inc.
#
# This script runs Gopherfied code - the key functionality is eval_script
import argparse
from sys import exit
import subprocess
from pathlib import Path
from generic_eval import main
import os

def eval_script(path: Path):
    basename = ".".join(str(path).split(".")[:-1])
    build = subprocess.run(["swiftc", path, "-o", basename], capture_output=True)
    status = None
    returncode = -1
    output = None
    if build.returncode != 0:
        # Well, it's a compile error. May be a type error or
        # something. But, why break the set convention
        status = "SyntaxError"
        returncode = build.returncode
        output = build
    else:
        try:
            # Assumes exit-code 0 is all okay
            output = subprocess.run([basename], capture_output=True, timeout=5)
            returncode = output.returncode
            if output.returncode == 0:
                status = "OK"
            else:
                # Well, it's a panic
                status = "Exception"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
            output = exc
        os.remove(basename)
    return {
        "status": status,
        "exit_code": returncode,
        "stdout": output.stdout,
        "stderr": output.stderr,
    }


if __name__ == "__main__":
    main(eval_script, 'Swift', '.swift')
