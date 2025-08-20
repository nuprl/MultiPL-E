from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- prompt (header):
int add(int x, int y) {

- completion (body fragment):
  return x + y;

- tests (close and provide main):
}
void main() {
  assert(add(2,3) == 5);
  print('OK');
}
"""


def eval_script(path: Path):
    r = run(["dart", "analyze", "--no-fatal-warnings", str(path)], timeout_seconds=15)
    if r.exit_code != 0:
        return {
            "status": "SyntaxError",
            "exit_code": r.exit_code,
            "stdout": r.stdout,
            "stderr": r.stderr,
        }

    r = run(["dart", str(path)], timeout_seconds=15)
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    else:
        status = "Exception"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
