from pathlib import Path
from safe_subprocess import run

def eval_script(path): 
    # Matlab has the requirement that all functions must appear at the end 
    # of the file. So we first have to write the call to the test-function at the 
    # beginning of the file.
    with open(path, 'r+') as f:
        content = f.read()
        f.seek(0, 0)
        f.write("test();" + '\n' + content)
    filename = path.stem 
    parent_dir = path.parent
    r = run(["matlab", "-sd", str(parent_dir), "-batch", f'"{str(filename)}"'], timeout_seconds=20)
    if r.timeout: 
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    elif "Assertion failed" in r.stderr: 
        status = "AssertionError"
    elif "File:" in r.stderr and "Line:" in r.stderr and "Column:" in r.stderr:
        status = "SyntaxError"
    else: 
        status = "Exception"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
