import argparse
from sys import exit
import subprocess
from pathlib import Path
from generic_eval import main_check_stubs


def check_script(path: Path):
    status = None
    stdout = None
    stderr = None
    exit_code = None
    try:
        build = subprocess.run(["go", "test", path],
                               encoding="utf-8",
                               timeout=15,
                               stdout=subprocess.PIPE,
                               stderr=subprocess.PIPE)

        stdout = build.stdout
        stderr = build.stderr
        exit_code = build.returncode
        # write to stderr just so that we can redirect stdout to a csv

        if "[setup failed]" in stdout or "[build failed]" in stdout:
            status = "SyntaxError"
        else:
            status = "OK"
    except subprocess.TimeoutExpired:
        status = "Timeout"

    return {
        "status": status,
        "exit_code": exit_code,
        "stdout": str(stdout),
        "stderr": str(stderr),
    }


if __name__ == "__main__":
    main_check_stubs(check_script, 'Go', '.go')
