# Authored by Arjun Guha, modified by Sydney Nguyen
# Copyright (c) 2022, Roblox Inc.
#
# This script translates problems from the OpenAI HumanEval dataset into R.

import ast
import re
from pathlib import Path
from typing import List
from generic_translator import main

DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class RTranslator:
    '''R Translator
    '''

    # NOTE(sydney) how do I make a stop sequence for something like x <-, where it should stop before x?
    stop = [ '\n}\n\n', '\n#' ]
    
    def __init__(self, file_ext):
        self.file_ext = file_ext
    
    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        r_description = (
            "# " + re.sub(DOCSTRING_LINESTART_RE, "\n-- ", description.strip()) + "\n"
        )
        arg_names = [arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        return f"{r_description}{name} <- function({arg_list})\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "test_humaneval <- function() {",
            f"candidate <- {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "    stopifnot({} == {})".format(left, right)

    def gen_literal(self, c):
        ''' Translate a literal expression
            c: is the literal value
        '''
        if type(c) == bool:
            return str(c).lower()
        return repr(c)
    
    def gen_var(self, v):
        '''Translate a variable with name v.
        '''
        return v
    
    
    def gen_list(self, l):
        '''Translate a list with elements l
           A list [ x, y, z ] translates to list(x, y, z)
        '''
        return "list(" + ", ".join(self.convert_expr(self, e) for e in l) + ")"
    
    #need tuples from the package sets?
    def gen_tuple(self, t):
        '''Translate a tuple with elements t
           A tuple (x, y, z) translates to tuple(x, y, z) }
        '''
        return "tuple(" + ", ".join(self.convert_expr(self, e) for e in t) + ")"
    
    def gen_dict(self, keys, values):
        '''Translate a dictionary with keys and values (uses R list with keys)
           A dictionary { "key1": val1, "key2": val2 } translates to list("key1" = val1, "key2" = val2)  
        '''
        return "list(" + ", ".join(f'"{k}" = {self.convert_expr(self, v)}' for k, v in zip(keys, values)) + ")"
    
    def gen_call(self, func, args):
        '''Translate a function call `func(args)`
           A function call f(x, y, z) translates to f(x, y, z)
        '''
        return self.convert_expr(self, func) + "(" + ", ".join(self.convert_expr(self, a) for a in args) + ")"

if __name__ == "__main__":
    translator = RTranslator("R")
    main(translator)
