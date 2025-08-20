from pathlib import Path
from safe_subprocess import run

LANG_NAME = "PHP"
LANG_EXT = ".php"

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
<?php
function add($x, $y) { return $x + $y; }

- tests:
if (add(2, 3) === 5) { echo "OK\n"; } else { echo "FAIL\n"; }
"""

def eval_script(path: Path):
    r = run(["php", path])
    if "PHP Parse error" in r.stdout:
        status = "SyntaxError"
    elif r.exit_code != 0:
        status = "Exception"
    else:
        status = "OK"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
