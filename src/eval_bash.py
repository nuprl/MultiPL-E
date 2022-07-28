# Authored by Arjun Guha and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc and Northeastern University
#
# This script runs the bash-ified HumanEval programs in datasets/bash
import subprocess
from subprocess import PIPE
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "sh-keep-code_davinci_001_temp_0.2").resolve()
    for filename in sorted(directory.glob("*.sh")):
        try:
            result = subprocess.run(["./bash_unit", filename.name],
                                    cwd=directory,
                                    stdout=PIPE,
                                    stderr=PIPE,
                                    encoding="utf-8",
                                    check=True,
                                    timeout=5)
            status = "OK"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
        except subprocess.CalledProcessError as exc:
            if 'syntax error' in str(exc.stderr):
                status = "SyntaxError"
            else:
                status = "Exception"
        print(f"bash,{filename.stem},{status}")

if __name__ == "__main__":
    main()

