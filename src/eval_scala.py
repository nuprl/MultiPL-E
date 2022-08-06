# Authored by Abhinav Jangda based on eval_scala.py
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

LANG_NAME = "Scala"
LANG_EXT = ".scala"

def eval_script(path: Path):
    with tempfile.TemporaryDirectory() as outdir:
        #Each Scala file contains the class with same name `JAVA_CLASS_NAME`
        #Hence, scalac will same JAVA_CLASS_NAME.class file for each problem
        #Write class for each problem to a different temp dir
        build = subprocess.run(["scalac", "-d", outdir, path], capture_output=True, encoding="utf-8")
        status = None
        returncode = -1
        output = None
        exec_name = "Problem" #JAVA_CLASS_NAME
        if build.returncode != 0:
            # Well, it's a compile error. May be a type error or
            # something. But, why break the set convention
            status = "SyntaxError"
            returncode = build.returncode
            output = build
        else:
            try:
                output = subprocess.run(["scala", "-cp", f"{outdir}", exec_name], capture_output=True, timeout=5, encoding="utf-8")
                returncode = output.returncode
                if output.returncode == 0 and output.stderr == "":
                    status = "OK"
                else:
                    # Well, it's a panic
                    status = "Exception"
            except subprocess.TimeoutExpired as exc:
                status = "Timeout"
                output = exc

        if output.stdout is None:
            output.stdout = "None"
        if output.stderr is None:
            output.stderr = "None"
        return {
            "status": status,
            "exit_code": returncode,
            "stdout": output.stdout,
            "stderr": output.stderr,
        }

if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
