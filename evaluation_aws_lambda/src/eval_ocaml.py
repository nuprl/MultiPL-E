from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- prompt (header):
let add x y =

- completion (body fragment):
  x + y

- tests (close and run):
;; assert (add 2 3 = 5);
print_endline "OK";;
"""

def eval_script(path: Path):
    r = run(["ocaml", str(path)])
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    elif "Assert_failure" in r.stderr:
        status = "AssertionError"
    elif "Syntax error" in r.stderr: 
        status = "SyntaxError"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
