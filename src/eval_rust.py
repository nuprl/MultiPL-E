# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Rustified HumanEval programs in datasets/rs
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "rs").resolve()

    for filename in os.listdir(directory):
        build = subprocess.run(["rustc", os.path.join(directory, filename), "-o", "/tmp/a.out"],
                                stderr=subprocess.DEVNULL)
        status = None
        if build.returncode != 0:
            # Well, it's a compile error. May be a type error or
            # something. But, why break the set convention
            status = "SyntaxError"
        else:
            try:
                # Assumes exit-code 0 is all okay
                subprocess.check_output(["/tmp/a.out"], stderr=subprocess.DEVNULL)
                status = "OK"
            except subprocess.TimeoutExpired as exc:
                status = "Timeout"
            except subprocess.CalledProcessError as exc:
                # Well, it's a panic
                status = "Exception"
            # Ensures the last /tmp/a.out file is deleted at the end. Otherwise, I retain
            # ownership and other users cannot overwrite it.
            os.remove("/tmp/a.out")
        filename = filename.split(".")[0]
        print(f"Rust,{filename},{status}")

if __name__ == "__main__":
    main()

