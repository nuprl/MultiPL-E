# Authored by Arjun Guha and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc and Northeastern University
#
# This script runs the PHPified HumanEval programs in datasets/php
import subprocess
from subprocess import PIPE
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "php").resolve()
    for filename in sorted(directory.glob("*.php")):
        try:
            result = subprocess.run(["php", filename.name],
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
            if 'PHP Parse error' in str(exc.stderr):
                status = "SyntaxError"
            else:
                status = "Exception"
        print(f"PHP,{filename.stem},{status}")

if __name__ == "__main__":
    main()

