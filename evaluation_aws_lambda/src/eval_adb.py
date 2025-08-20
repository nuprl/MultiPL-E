from pathlib import Path
from safe_subprocess import run
from generic_eval import main


LANG_NAME = "Ada"
LANG_EXT = ".adb"

"""
Examples for MultiPL-E composition (prompt + completion + tests):

- completion:
with Ada.Text_IO; use Ada.Text_IO;
procedure Main is
  function Add(X, Y : Integer) return Integer is (X + Y);
begin
  null;
end Main;

- tests:
-- Add calls/assertions can be placed in Main; e.g.,
-- Put_Line(Integer'Image(Add(2,3)));
"""


def eval_script(path: Path):
    working_dir: Path = path.parent / (path.stem + "_tmp")
    working_dir.mkdir()
    # Run gnatchop in a writable directory to avoid temp-file errors on read-only CWD
    chop_result = run(["gnatchop", "-w", path, working_dir], cwd=str(working_dir))
    if chop_result.exit_code != 0:
        return {
            "status": "SyntaxError (gnatchop)",
            "exit_code": chop_result.exit_code,
            "stdout": chop_result.stdout,
            "stderr": chop_result.stderr,
        }

    build_result = run(
        [
            "gnatmake",
            "-gnatW8",
            "main.adb",
            "-o",
            "main",
            "-g",
            "-j0",
            "-gnata",
#            "-gnat2022",
            "-gnateE",
            "-bargs",
            "-Es",
        ],
        cwd=str(working_dir),
    )
    if build_result.exit_code != 0:
        return {
            "status": "SyntaxError (gnatmake)",
            "exit_code": build_result.exit_code,
            "stdout": build_result.stdout,
            "stderr": build_result.stderr,
        }

    status = "OK"
    run_result = run(["./main"], cwd=str(working_dir))

    if run_result.timeout:
        status = "Timeout"
    elif run_result.exit_code != 0:
        status = "Exception"

    return {
        "status": status,
        "exit_code": run_result.exit_code,
        "stdout": run_result.stdout,
        "stderr": run_result.stderr,
    }


if __name__ == "__main__":
    main(eval_script, LANG_NAME, LANG_EXT)
