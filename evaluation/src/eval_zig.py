from pathlib import Path
from safe_subprocess import run
from generic_eval import main

LANG_NAME = "Zig"
LANG_EXT = ".zig"


def eval_script(path: Path):
    basename = ".".join(str(path).split(".")[:-1])
    build_result = run(["zig", "test", path])
    if build_result.exit_code != 0:
        return {
            "status": "SyntaxError",
            "exit_code": build_result.exit_code,
            "stdout": build_result.stdout,
            "stderr": build_result.stderr,
        }

    run_result = run([basename])
    if run_result.timeout:
        status = "Timeout"
    elif run_result.exit_code != 0:
        status = "Exception"
    else:
        status = "OK"
    return {
        "status": status,
        "exit_code": run_result.exit_code,
        "stdout": run_result.stdout,
        "stderr": run_result.stderr,
    }


if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
