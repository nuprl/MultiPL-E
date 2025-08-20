from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- prompt (header):
let add x y =

- completion (body fragment):
    x + y

- tests (run):
printfn "%d" (add 2 3)
"""

def eval_script(path: Path):
    r = run(["dotnet", "fsi", "-d:DEBUG", str(path)])
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    else:
        status = "Exception"
    return { 
        "status" : status, 
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
