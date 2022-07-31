# Authored by Abhinav Jangda based on eval_rust.py
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script runs the C++ Translated HumanEval programs in datasets/cpp-*
import os
import subprocess
from pathlib import Path

import os
import subprocess
import tempfile
from pathlib import Path
from generic_eval import main

LANG_NAME = "C++"
LANG_EXT = ".cpp"

#Following files have problems:
#137, 
#22: Any
#148: Elipsis

def eval_script(path: Path):
    basename = ".".join(str(path).split(".")[:-1])
    build = subprocess.run(["g++", path, "-o", basename], capture_output=True)
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
    if output.stdout is not None:
        output.stdout = output.stdout.decode("utf-8")
    else:
        output.stdout = "None"

    if output.stderr is not None:
        output.stderr = output.stderr.decode("utf-8")
    else:
        output.stderr = "None"
    return {
        "status": status,
        "exit_code": returncode,
        "stdout": output.stdout,
        "stderr": output.stderr,
    }

if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
