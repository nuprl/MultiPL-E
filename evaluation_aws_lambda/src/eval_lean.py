from pathlib import Path
import subprocess

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
def add (x y : Nat) := x + y

- tests:
theorem t : add 2 3 = 5 := rfl
"""


def eval_script(path: Path):
    try:
        cp = subprocess.run(["/usr/local/bin/lean", str(path)], capture_output=True, timeout=30)
        stdout = "" if cp.stdout is None else cp.stdout.decode("utf-8", errors="ignore")
        stderr = "" if cp.stderr is None else cp.stderr.decode("utf-8", errors="ignore")

        # Lean should return 0 on success; errors are printed to stderr.
        if cp.returncode == 0 and stderr.strip() == "":
            status = "OK"
        elif "tactic 'rfl' failed" in stderr or "tactic 'rfl' failed" in stdout:
            status = "AssertionError"
        elif "error:" in stderr:
            status = "SyntaxError"
        else:
            status = "Exception"
        return {
            "status": status,
            "exit_code": cp.returncode,
            "stdout": stdout,
            "stderr": stderr,
        }
    except subprocess.TimeoutExpired as exc:
        return {
            "status": "Timeout",
            "exit_code": -1,
            "stdout": "" if exc.stdout is None else exc.stdout.decode("utf-8", errors="ignore"),
            "stderr": "" if exc.stderr is None else exc.stderr.decode("utf-8", errors="ignore"),
        }
