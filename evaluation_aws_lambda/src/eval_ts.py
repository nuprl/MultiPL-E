from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
function add(x: number, y: number): number { return x + y; }

- tests:
console.assert(add(2, 3) === 5);
console.log('OK');
"""


def eval_script(path: Path):
    r = run(["tsc", "--target", "esnext", str(path)], timeout_seconds=15)
    if r.exit_code != 0:
        return {
            "status": "SyntaxError",
            "exit_code": r.exit_code,
            "stdout": r.stdout,
            "stderr": r.stderr,
        }

    r = run(["node", str(path).replace(".ts", ".js")], timeout_seconds=15)
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    elif "ERR_ASSERTION" in r.stderr:
        status = "AssertionError"
    elif "SyntaxError" in r.stderr:
        status = "SyntaxError"
    elif "ReferenceError" in r.stderr:
        status = "ReferenceError"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
