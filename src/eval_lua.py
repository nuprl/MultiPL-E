# Authored by Arjun Guha, Abhinav Jangda, and based on eval_ruby by Molly Feldman
# Copyright (c) 2022, Roblox Inc.
#
# This script runs the Luafied HumanEval programs in datasets/lua

from libeval import run_without_exn
import argparse
from sys import exit
import subprocess
from pathlib import Path
from generic_eval import main as gmain

def eval_script(path: Path):
    return run_without_exn(["lua", str(path)])
    

if __name__ == "__main__":
    gmain(eval_script, 'Lua', '.lua')
