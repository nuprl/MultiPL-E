"""
MultiPL-E test evaluator for Common Lisp.
Author: Rudolf Adamkovič <rudolf@adamkovic.org>

- MultiPL-E: https://github.com/nuprl/MultiPL-E
- Common Lisp: https://lisp-lang.org/
- HyperSpec: https://www.lispworks.com/documentation/HyperSpec/Front/index.htm
- Steel Bank Common Lisp: https://www.sbcl.org/
- FiveAM: https://fiveam.common-lisp.dev/
"""

from pathlib import Path
from safe_subprocess import run
from re import search

def eval_script(path: Path):
    result = run(["sbcl-multipl-e", "--load", str(path), "--quit"])
    if result.timeout:
        status = "Timeout"
    elif search(r"Pass:\s*\d+\s*\(100%\)", result.stdout):
        status = "OK"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }
