"""
Evaluates a generated Scheme program (.scm) using GNU Guile.

- https://www.gnu.org/software/guile/
"""

from pathlib import Path
from safe_subprocess import run
from re import search

def eval_script(path: Path, extra_flags=None):
    cmd = ["guile", "--no-auto-compile"] + (extra_flags or []) + [str(path)]
    result = run(cmd)
    if result.timeout:
        status = "Timeout"
    elif result.exit_code != 0:
        status = "Exception"
    elif search(r"# of unexpected failures +[1-9]+", result.stdout):
        status = "Exception"
    elif search(r"# of expected passes +[1-9]+", result.stdout):
        status = "OK"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }
