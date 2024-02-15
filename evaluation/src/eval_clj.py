"""
Evaluates a generated Clojure program (.clj).
"""
import os
from pathlib import Path
from safe_subprocess import run
from libeval import run_without_exn


def eval_script(path: Path):
    result = run(["clojure", str(path)])

    # will produce exit code 0 even if tests fail.
    if len(result.stderr) > 0 or result.exit_code != 0:
        status = "Exception"
    else:
        status = "OK"

    return {
        "status": status,
        "exit_code": result.exit_code,
        "stdout": result.stdout,
        "stderr": result.stderr,
    }

if __name__ == "__main__":
    main()
