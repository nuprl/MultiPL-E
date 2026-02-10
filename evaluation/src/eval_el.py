"""
Evaluates a generated Emacs Lisp program (.el).
"""
from pathlib import Path
from safe_subprocess import run

def eval_script(path: Path):

    result = run([
        "emacs", "-batch",
        "-l", "ert",
        "-l", str(path),
        "-f", "ert-run-tests-batch-and-exit"
    ])

    if result.timeout:
        status = "Timeout"
    elif result.exit_code != 0:
        status = "Exception"
    elif "\nRan 1 tests, 1 results as expected, 0 unexpected" in result.stderr:
        status = "OK"
    else: # test failure
        status = "Exception"

    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }

if __name__ == "__main__":
    main()
