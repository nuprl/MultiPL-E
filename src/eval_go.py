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
    build = subprocess.run(["go", "test", path],
                           encoding="utf-8",
                           timeout=15,
                           stdout=subprocess.PIPE,
                           stderr=subprocess.PIPE)

    status = None
    stdout = build.stdout
    # write to stderr just so that we can redirect stdout to a csv

    if "[setup failed]" in stdout or "[build failed]" in stdout:
        status = "SyntaxError"
    elif "FAIL" in stdout:
        status = "Exception"
    elif "ok" in stdout:
        status = "OK"
    else:
        status = "Timeout"

    return {
        "status": status,
        "exit_code": build.returncode,
        "stdout": str(stdout),
        "stderr": str(build.stderr),
    }


if __name__ == "__main__":
    gmain(eval_script, 'Go', '.go')
