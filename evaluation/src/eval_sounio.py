"""MultiPL-E evaluation backend for Sounio (.sio).

Compiles each generated `.sio` file with `souc compile`, runs the produced
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
    basename = ".".join(str(path).split(".")[:-1])
    binary = basename + ".bin"

    # souc 1.0.0-beta.5 implements both `souc compile <src> -o <out>` and a
    # raw pass-through `souc <src> <out>`.  The raw form is the one currently
    # exercised by the in-tree gates, so we use it here for parity.
    try:
        build = subprocess.run(
            [SOUC, str(path), binary],
            capture_output=True,
            timeout=30,
        )
    except subprocess.TimeoutExpired:
        return {
            "status": "Timeout",
            "exit_code": -1,
            "stdout": "Compiler timeout",
            "stderr": "Compiler timeout",
        }

    # The raw pass-through writes the ELF without setting the +x bit, so we
    # explicitly mark it executable before invoking.
    try:
        os.chmod(binary, 0o755)
    except FileNotFoundError:
        pass

    if build.returncode != 0:
        return {
            "status": "SyntaxError",
            "exit_code": build.returncode,
            "stdout": build.stdout.decode("utf-8", errors="replace"),
            "stderr": build.stderr.decode("utf-8", errors="replace"),
        }

    try:
        output = subprocess.run([binary], capture_output=True, timeout=10)
    except subprocess.TimeoutExpired as exc:
        try:
            os.remove(binary)
        except OSError:
            pass
        return {
            "status": "Timeout",
            "exit_code": -1,
            "stdout": "",
            "stderr": str(exc),
        }

    status = "OK" if output.returncode == 0 else "Exception"
    try:
        os.remove(binary)
    except OSError:
        pass

    return {
        "status": status,
        "exit_code": output.returncode,
        "stdout": output.stdout.decode("utf-8", errors="replace"),
        "stderr": output.stderr.decode("utf-8", errors="replace"),
    }


if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
