from pathlib import Path
from safe_subprocess import run

# Exit codes (Dafny CLI)
# 0 – success
# 1 – invalid command-line arguments
# 2 – syntax, parse, or name/type resolution errors
# 4 – verification errors

def eval_script(path: Path):
    # Prefer verification-only to avoid requiring .NET toolchain at runtime.
    r = run(["/usr/local/bin/dafny", "verify", str(path)], timeout_seconds=30)
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    elif r.exit_code == 2:
        status = "SyntaxError"
    elif r.exit_code == 4:
        status = "VerificationError"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
method Add(x: int, y: int) returns (r: int) { r := x + y; }

- tests (verification-oriented):
method Main() {
  assert Add(2,3) == 5;
  print "OK\n";
}
"""
