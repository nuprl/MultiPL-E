"""
Evaluates a generated Fennel program (.fnl).
"""
import os
from pathlib import Path
from safe_subprocess import run
from libeval import run_without_exn

def eval_script(path: Path):

    module_dir = path.parent
    module = path.stem

    old_path = os.environ["FENNEL_PATH"]
    new_path = f'{old_path};{module_dir}/?.fnl'

    args = ["fennel", "/faith.fnl", "--tests", module]
    env = {'FENNEL_PATH': new_path}

    result = run(args, env = env)

    if result.timeout:
        status = "Timeout"
    elif result.exit_code != 0:
        status = "Exception"
    elif "\n1 passed, 0 failed, 0 error(s), 0 skipped\n" in result.stdout:
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
