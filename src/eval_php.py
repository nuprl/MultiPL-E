# Authored by Arjun Guha and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc and Northeastern University
#
# Main goal: provide an eval_script implementation 
# This gets called by problem_evaluator.py for all generated code 
#
# See generic_eval.py for instructions on how to run.

import subprocess
from pathlib import Path
from generic_eval import main

LANG_NAME = "PHP"
LANG_EXT = ".php"

def eval_script(path: Path):
    try:
        # Capture output - will be generated regardless of success, fail, or syntax error
        output = subprocess.run(
            ["php", path], capture_output=True, timeout=5, encoding="utf-8"
        )

        if output.returncode == 0: # Assumes exit-code 0 is all okay
            status = "OK"
        else: # We have entered into a failure or a SyntaxError
            if "PHP Parse error" in output.stderr:
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
    main(eval_script, LANG_NAME, LANG_EXT)
