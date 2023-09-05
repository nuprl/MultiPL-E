from pathlib import Path
from safe_subprocess import run

def eval_script(path):
    # Matlab has the requirement that all functions must appear at the end
    # of the file.
    # However, Octave does not.
    # So we write the run to the end of the file.
    with open(path, 'r') as f:
        content = f.read()
    content = f"{content}\ntest();"
    with open(path, 'w') as f:
        f.write(content)
    filename = path

    r = run(["octave", "-q", "-f", "--no-gui", filename], timeout_seconds=30)

    # This is still somewhat brittle.
    if r.timeout:
        status = "Timeout"
        exit_code = -1
    elif r.stderr == "\n":
        status = "OK"
        exit_code = 0
    else:
        status = "Exception"
        exit_code = 1

    return {
        "status": status,
        "exit_code": exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
