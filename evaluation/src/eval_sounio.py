"""MultiPL-E evaluation backend for Sounio (.sio).

Compiles each generated `.sio` file with the pinned compiler, runs the produced
binary with a short timeout, and emits a verdict in the MultiPL-E convention.

The driver in `generic_eval.main` calls `eval_script(path)` per problem and
expects a dict shaped like:

    {"status": "OK" | "SyntaxError" | "Exception" | "Timeout",
     "exit_code": int,
     "stdout": str,
     "stderr": str}
"""

import os
import subprocess
import tempfile
from pathlib import Path

from generic_eval import main


LANG_NAME = "Sounio"
LANG_EXT = ".sio"

# Allow override via $SOUC so the harness can point at a non-PATH binary
# (useful for local development and inside the per-language Dockerfile).
SOUC = os.environ.get("SOUC", "souc")


def eval_script(path: Path):
    # Never reuse or remove an executable adjacent to a caller's input. Each
    # invocation owns its output directory, including on every failure path.
    with tempfile.TemporaryDirectory(prefix="multipl-e-sounio-") as directory:
        binary = str(Path(directory) / "program")
        try:
            build = subprocess.run(
                [SOUC, "compile", str(path.resolve()), "-o", binary],
                capture_output=True,
                timeout=30,
            )
        except subprocess.TimeoutExpired:
            return _failure("Timeout", "Compiler timeout")
        except OSError as exc:
            return _failure("Exception", str(exc))

        if build.returncode != 0:
            return _result("SyntaxError", build)

        try:
            os.chmod(binary, 0o755)
            output = subprocess.run([binary], capture_output=True, timeout=10)
        except subprocess.TimeoutExpired as exc:
            return _failure("Timeout", str(exc))
        except OSError as exc:
            # A successful compiler exit without an executable, or an OS-level
            # launch failure, is not a successful benchmark completion.
            return _failure("Exception", str(exc))

        return _result("OK" if output.returncode == 0 else "Exception", output)


def _failure(status, message):
    return {"status": status, "exit_code": -1, "stdout": "", "stderr": message}


def _result(status, process):
    return {
        "status": status,
        "exit_code": process.returncode,
        "stdout": process.stdout.decode("utf-8", errors="replace"),
        "stderr": process.stderr.decode("utf-8", errors="replace"),
    }


if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
