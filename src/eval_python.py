import os
import subprocess
from pathlib import Path
from generic_eval import main

def eval_script(path: Path):
    output = None
    try:
        # Assumes exit-code 0 is all okay
        output = subprocess.run(
            ["python3", str(path)], encoding="utf-8", capture_output=True, timeout=5
        )
        returncode = -1
        if output.returncode == 0: 
            status = "OK"
            returncode = output.returncode
        elif "SyntaxError" in output.stderr: 
            status = "SyntaxError"
            returncode = output.returncode
        else:
            status = "Exception"
    except subprocess.TimeoutExpired as exc:
        status = "Timeout"
        returncode = -1
        output = exc

    return { 
        "status" : status, 
        "exit_code": returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }

if __name__ == "__main__":
    main(eval_script, "Python", "py")

