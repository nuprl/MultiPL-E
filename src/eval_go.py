# Authored by Arjun Guha, edited by Federico Cassano
# Copyright (c) 2022, Roblox Inc.
#
# This script runs Gopherfied code - the key functionality is eval_script
import argparse
from sys import exit
import subprocess
from pathlib import Path
from generic_eval import main as gmain


def eval_script(path: Path):
    status = None
    stdout = None
    stderr = None
    exit_code = None
    try:
        build = subprocess.run(["go", "test", path],
                               timeout=15,
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)

        stdout = build.stdout.decode("utf-8", errors="ignore")
        stderr = build.stderr.decode("utf-8", errors="ignore")
        exit_code = build.returncode
        # write to stderr just so that we can redirect stdout to a csv

        if "[setup failed]" in stdout or "[build failed]" in stdout:
            status = "SyntaxError"
        elif "FAIL" in stdout:
            status = "Exception"
        else:
            status = "OK"
    except subprocess.TimeoutExpired:
        status = "Timeout"

    return {
        "status": status,
        "exit_code": exit_code,
        "stdout": stdout,
        "stderr": stderr,
    }


if __name__ == "__main__":
    gmain(eval_script, 'Go', '.go')
