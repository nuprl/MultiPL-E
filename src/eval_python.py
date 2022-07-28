# Authored by Arjun Guha, edited by John Gouwar
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Pythoned HumanEval programs
import os
import subprocess
from pathlib import Path

def eval_script(path: Path):
    output = None
    try:
        # Assumes exit-code 0 is all okay
        output = subprocess.run(
            ["python3", str(path)], encoding="utf-8", capture_output=True, timeout=5
        )
        returncode = -1
        if output.returncode == 0: 
            status = "OK"
            returncode = output.returncode
        elif "SyntaxError" in output.stderr: 
            status = "SyntaxError"
            returncode = output.returncode
        else:
            status = "Exception"
    except subprocess.TimeoutExpired as exc:
        status = "Timeout"
        returncode = output.returncode
        output = exc

    return { 
        "status" : status, 
        "exit_code": output.returncode,
        "stdout": str(output.stdout),
        "stderr": str(output.stderr),
    }


def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "py-keep-code_davinci_001_temp_0.2").resolve()

    for filename in os.listdir(directory):
        r = eval_script(Path.joinpath(directory, filename))
        filename = filename.split(".")[0]
        print(f"Python,{filename},{r['status']}")

if __name__ == "__main__":
    main()

