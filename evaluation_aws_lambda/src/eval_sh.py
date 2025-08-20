from pathlib import Path
from safe_subprocess import run

LANG_NAME = "bash"
LANG_EXT = ".sh"

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
add(){ echo $(($1 + $2)); }

- tests:
[[ $(add 2 3) -eq 5 ]] && echo OK || echo FAIL
"""

def eval_script(path: Path):
    # Capture output - will be generated regardless of success, fail, or syntax error
    p = run(["bash", path])
    if p.timeout:
        status = "Timeout"
    elif p.exit_code == 0:
        status = "OK"
    elif "syntax error" in p.stderr:
        status = "SyntaxError"
    else:
        status = "Exception"
    
    return {
        "status": status,
        "exit_code": p.exit_code,
        "stdout": p.stdout,
        "stderr": p.stderr,
    }
