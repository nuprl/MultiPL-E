from pathlib import Path
from safe_subprocess import run

def eval_script(path: Path):
    # Matlab has the requirement that all functions must appear at the end
    # of the file.
    # However, Octave does not.
    # So we write the function call to the end of the file.
    import os
    with open(str(path), 'r') as f:
        content = f.read()
    content = f"{content}\ntest();"
    with open(str(path), 'w') as f:
        f.write(content)

    #                  quiet norc  nowindow nohistory ...duh                                      this is because of a bug in octave
    #                                                                                             (to be filed shortly :p)
    r = run(["octave", "-q", "-f", "-W",    "-H",     "--no-gui", str(path)], timeout_seconds=30, cwd=path.parent)

    # This is still somewhat brittle.
    if r.timeout:
        status = "Timeout"
        exit_code = -1
    elif r.stderr == "\n":
        status = "OK"
        exit_code = 0
    elif "syntax error" in r.stderr:
        status = "SyntaxError"
        exit_code = 1
    else:
        status = "Exception"
        exit_code = 1

    return {
        "status": status,
        "exit_code": exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
