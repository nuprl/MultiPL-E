# Authored by Arjun Guha and Abhinav Jangda
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Lua.
import os
import sys
from pathlib import Path
from humaneval_to_lua import LuaTranslator
from generic_translator import translate_file, target_path

class FakeArgs:
    def __init__(self, n, doctests, model):
        self.n = n
        self.doctests = doctests
        self.model = model

def get_files():
    directory = Path(Path(__file__).parent, "..", "datasets").resolve()
    files_unsorted = directory.glob("originals/*.py") 
    files_sorted = sorted(files_unsorted, key=(lambda s: int(str(s.name).split("_")[1])))
    return files_sorted

files = get_files()
translators = [ LuaTranslator("lua") ]

for translator in translators:
    for file in files:
        for n in range(1, 100):
            args = FakeArgs(n, "keep", "incoder_6b_temp_0.2")
            target = target_path(args, translator, file)
            if target.exists():
                continue
            translate_file(args, translator, file)

        
