import os
import shutil
import subprocess
import tempfile
from pathlib import Path
from generic_eval import main

LANG_NAME = "Zig"
LANG_EXT = ".zig"

def eval_script(path: Path):
    basename = ".".join(str(path).split(".")[:-1])
    cache_dir = tempfile.mkdtemp(prefix="zig-cache-")
    try:
        build = subprocess.run(
            ["zig", "build-exe", str(path), f"-femit-bin={basename}",
             "--global-cache-dir", cache_dir],
            capture_output=True, timeout=30
        )
    except subprocess.TimeoutExpired:
        return {
            "status": "Timeout",
            "exit_code": -1,
            "stdout": "Compiler timeout",
            "stderr": "Compiler timeout",
        }
    finally:
        shutil.rmtree(cache_dir, ignore_errors=True)
    status = None
    returncode = -1
    output = None
    try:
        if build.returncode != 0:
            status = "SyntaxError"
            returncode = build.returncode
            output = build
        else:
            try:
                output = subprocess.run([basename], capture_output=True, timeout=5)
                returncode = output.returncode
                if output.returncode == 0:
                    status = "OK"
                else:
                    status = "Exception"
            except subprocess.TimeoutExpired as exc:
                status = "Timeout"
                output = exc
        return {
            "status": status,
            "exit_code": returncode,
            "stdout": "" if output.stdout is None else output.stdout.decode("utf-8"),
            "stderr": "" if output.stderr is None else output.stderr.decode("utf-8"),
        }
    finally:
        if os.path.exists(basename):
            os.remove(basename)

if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
