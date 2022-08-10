# Authored by Arjun Guha and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc and Northeastern University
#
# Main goal: provide an eval_script implementation 
# This gets called by problem_evaluator.py for all generated code 
#
# See generic_eval.py for instructions on how to run.

import os
import signal
import subprocess
import traceback
from pathlib import Path
from generic_eval import main as gmain

LANG_NAME = "bash"
LANG_EXT = ".sh"

def eval_script(path: Path):
    # Capture output - will be generated regardless of success, fail, or syntax error
    p = subprocess.Popen(
        ["bash", path], stdout=subprocess.PIPE, stderr=subprocess.PIPE, start_new_session=True
    )
    try:
        outs, errs = p.communicate(timeout=5)
        returncode = p.returncode

        if returncode == 0: # Assumes exit-code 0 is all okay
            status = "OK"
        else: # We have entered into a failure or a SyntaxError
            if "syntax error" in str(errs):
                status = "SyntaxError"
            else:
                status = "Exception"
        returncode = returncode
    except subprocess.TimeoutExpired as exc:
        outs, errs = p.stdout, p.stderr
        os.killpg(os.getpgid(p.pid), signal.SIGTERM)
        status = "Timeout"
        output = exc
        returncode = -1
    except Exception as exc:
        print('Something very weird has happened in subprocess.run for bash, INVESTIGATE!')
        print(f'Exception: {exc}')

    return {
        "status": status,
        "exit_code": returncode,
        "stdout": str(outs),
        "stderr": str(errs),
    }

if __name__ == "__main__":
    gmain(eval_script, LANG_NAME, LANG_EXT)
