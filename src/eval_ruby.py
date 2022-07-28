# Authored by Arjun Guha, edited by Molly Q Feldman
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Luafied HumanEval programs in datasets/lua
import os
import subprocess
from pathlib import Path


def eval_script(path: Path):
    try:
        # Assumes exit-code 0 is all okay
        # Capture
        output = subprocess.run(
            " ".join(["ruby", path]), shell=True, capture_output=True, timeout=5
        )
        # TODO(arjun): molly do the syntaxerror stuff
        if output.returncode == 0:
            status = "OK"
        else:
            if "b''" == str(output.stdout):
                status = "SyntaxError"
            else:
                status = "Exception"
        returncode = output.returncode
    except subprocess.TimeoutExpired as exc:
        status = "Timeout"
        output = exc
        returncode = -1
    except subprocess.CalledProcessError as exc:
        returncode = exc.returncode
        if "b''" == str(exc.output):
            status = "SyntaxError"
        else:
            status = "Exception"
        output = exc
    return {
        "status": status,
        "exit_code": returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }


def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "rb").resolve()

    for filename in os.listdir(directory):
        r = eval_script(Path.joinpath(directory, filename))
        filename = filename.split(".")[0]
        print(f"Ruby,{filename},{r['status']}")


if __name__ == "__main__":
    main()
