# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Luafied HumanEval programs in datasets/lua
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "lua").resolve()

    for filename in os.listdir(directory):
        # If it's a .lua file:
        if filename == "luaunit.lua":
            continue

        try:
            # Assumes exit-code 0 is all okay
            subprocess.check_output(["lua", os.path.join(directory, filename)],
                                        encoding="utf-8",
                                        stderr=subprocess.DEVNULL, timeout=5)
            status = "OK"
        except subprocess.TimeoutExpired as exc:
            status = "Timeout"
        except subprocess.CalledProcessError as exc:
            if 'expected near' in (str(exc.output)) or 'Failed tests:' not in str(exc.output):
                status = "SyntaxError"
            else:
                status = "Exception"
        filename = filename.split(".")[0]
        print(f"Lua,{filename},{status}")

if __name__ == "__main__":
    main()
