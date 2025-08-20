from pathlib import Path
from safe_subprocess import run

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- prompt (header):
add :: Int -> Int -> Int
add x y =

- completion (body fragment):
  x + y

- tests (main):
main = do
  if add 2 3 == 5 then putStrLn "OK" else error "FAIL"
"""


def eval_script(path: Path):
    r = run(["runghc", str(path)], timeout_seconds=15)
    if r.timeout:
        status = "Timeout"
    elif r.exit_code == 0:
        status = "OK"
    else:
        stderr_lower = (r.stderr or "").lower()
        if any(
            key in stderr_lower
            for key in (
                "parse error",
                "lexical error",
                "illegal character",
                "incorrect indentation",
            )
        ):
            status = "SyntaxError"
        else:
            status = "Exception"
    return {
        "status": status,
        "exit_code": r.exit_code,
        "stdout": r.stdout,
        "stderr": r.stderr,
    }
