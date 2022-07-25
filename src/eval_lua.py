# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Luafied HumanEval programs in datasets/lua
import os
import subprocess
from pathlib import Path

def main():
    directory = Path(Path(__file__).parent, "..", "datasets", "lua").resolve()
    total = 0
    successes = 0
    # For every file in lua_humaneval:
    for filename in os.listdir(directory):
        # If it's a .lua file:
        if filename == "luaunit.lua":
            continue
        total += 1
        # Run it with lua, suppressing all output
        ok = False
        try:
            output = subprocess.check_output(" ".join(["lua", os.path.join(directory, filename)]),
                                        stderr=subprocess.STDOUT, shell=True)
        except subprocess.CalledProcessError as exc:
            if 'expected near' in (str(exc.output)) or\
                'Failed tests:' not in str(exc.output):
                #Either it has parse error or no tests were failed
                print(str(exc.output))
                return
            print("FAIL", exc.returncode, exc.output)
        else:
            #Success
            ok = True
            successes += 1
        filename = filename.split(".")[0]
        print(f"Lua,{filename},{ok}")
    # print(f"{successes}/{total}")

if __name__ == "__main__":
    main()
