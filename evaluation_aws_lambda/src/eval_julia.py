from safe_subprocess import run
from pathlib import Path

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
add(x, y) = x + y

- tests:
@assert add(2, 3) == 5
println("OK")
"""

def eval_script(path: Path):
    result = run(["julia", str(path)], timeout_seconds=30)
    if result.timeout:
        status = "Timeout"
    elif result.exit_code == 0:
        status = "OK"
    # TODO(arjun): I would like this to be reviewed more carefully by John.
    elif len(result.stderr) < 1:
        status = "Exception"
    else:
        status = "SyntaxError"

    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }
