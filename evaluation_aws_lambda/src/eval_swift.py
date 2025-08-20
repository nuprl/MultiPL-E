import os
from pathlib import Path
import tempfile
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- prompt (header):
func add(_ x: Int, _ y: Int) -> Int {

- completion (body fragment):
    return x + y

- tests (close function and call):
}
print(add(2, 3)) // expect 5; or add assertions if desired
"""


def eval_script(path: Path):
    # Compile into an isolated, writable tmpdir and avoid gold linker.
    with tempfile.TemporaryDirectory() as td:
        out = str(Path(td) / "main")
        # Prefer ld.bfd over ld.gold in Lambda to avoid EPERM on /tmp
        r = run(["swiftc", "-use-ld=bfd", str(path), "-o", out], timeout_seconds=45)
        if r.timeout:
            status = "Timeout"
        elif r.exit_code != 0:
            status = "SyntaxError"
        else:
            r = run([out], timeout_seconds=5)
            if r.timeout:
                status = "Timeout"
            elif r.exit_code != 0:
                status = "Exception"
            else:
                status = "OK"
        return {
            "status": status,
            "exit_code": r.exit_code,
            "stdout": r.stdout,
            "stderr": r.stderr,
        }
