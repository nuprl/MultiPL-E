# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Rustified HumanEval programs in datasets/rs
import os
import subprocess
import tempfile
from pathlib import Path
from generic_eval import main

LANG_NAME = "Rust"
LANG_EXT = ".rs"

def eval_script(path: Path):
    basename = ".".join(str(path).split(".")[:-1])
    build = subprocess.run(["rustc", path, "-o", basename], capture_output=True)
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
        "stdout": "" if output.stdout is None else output.stdout.decode("utf-8"),
        "stderr": "" if output.stderr is None else output.stderr.decode("utf-8"),
    }

if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)

