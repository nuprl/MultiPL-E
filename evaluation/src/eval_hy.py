"""
Evaluates a generated Hy program (.hy).

- https://hylang.org/
"""

from pathlib import Path
from safe_subprocess import run

def eval_script(path: Path):
    result = run(["hy", str(path)])
    if result.timeout:
        status = "Timeout"
    elif result.exit_code == 0:
        status = "OK"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }
