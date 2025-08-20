"""
Evaluates a generated Clojure program (.clj).
Ensures Clojure CLI uses build-time caches by setting HOME=/root, avoiding
runtime dependency resolution (Lambda egress is restricted).
"""
import os
from pathlib import Path
from safe_subprocess import run
from libeval import run_without_exn

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
(defn add [x y] (+ x y))

- tests:
;; Our evaluator checks for "0 failures, 0 errors." in stdout
(println)
(println "0 failures, 0 errors.")
"""


def eval_script(path: Path):
    # Prefer invoking Clojure directly via the installed jars to avoid
    # runtime dependency resolution (no network egress in Lambda).
    # Use jars made available in /opt/clojure (copied during image build)
    clj_lib = "/opt/clojure/*"
    cmd = [
        "java",
        "-Dclojure.main.report=stderr",
        "-cp",
        clj_lib,
        "clojure.main",
        str(path),
    ]
    result = run(cmd)

    if result.timeout:
        status = "Timeout"
    elif result.exit_code != 0:
        status = "Exception"
    elif "\n0 failures, 0 errors.\n" in result.stdout:
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
