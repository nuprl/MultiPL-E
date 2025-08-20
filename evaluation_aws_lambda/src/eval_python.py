from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
def add(x, y):
    return x + y

- tests:
if __name__ == "__main__":
    assert add(2, 3) == 5
    print("OK")
"""

def eval_script(path: Path):
    r = run(["python3", str(path)])
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    elif "SyntaxError" in r.stderr: 
        status = "SyntaxError"
    else:
        status = "Exception"
    return { 
        "status" : status, 
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
