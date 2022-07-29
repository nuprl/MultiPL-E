# Authored by Arjun Guha and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc and Northeastern University
#
# Main goal: provide an eval_script implementation 
# This gets called by problem_evaluator.py for all generated code 
#
# See generic_eval.py for instructions on how to run.

import subprocess
from pathlib import Path
from generic_eval import main as gmain

LANG_NAME = "bash"
LANG_EXT = ".sh"

def eval_script(path: Path):
    try:
        # Capture output - will be generated regardless of success, fail, or syntax error
        # Need to change the current working directory to use bash_unit
        output = subprocess.run(
            ["./bash_unit", path], capture_output=True, timeout=5, encoding="utf-8", cwd=path.parent
        )

        if output.returncode == 0: # Assumes exit-code 0 is all okay
            status = "OK"
        else: # We have entered into a failure or a SyntaxError
            if "syntax error" in output.stderr:
                status = "SyntaxError"
            else:
                status = "Exception"
        returncode = output.returncode
    except subprocess.TimeoutExpired as exc:
        status = "Timeout"
        output = exc
        returncode = -1
    except:
        print('Something very weird has happened in subprocess.run for PHP, INVESTIGATE!')

    return {
        "status": status,
        "exit_code": returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }

if __name__ == "__main__":
    gmain(eval_script, LANG_NAME, LANG_EXT)
