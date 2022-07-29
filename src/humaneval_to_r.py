# Authored by Arjun Guha, modified by Sydney Nguyen
# Copyright (c) 2022, Roblox Inc.
#
# This script translates problems from the OpenAI HumanEval dataset into R.

import ast
import re
from typing import List
from generic_translator import main

DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class RTranslator:
    '''R Translator
    '''

    stop = [ '\n}\n\n', '\n#', '\n```']
    
    def __init__(self, file_ext):
        self.file_ext = file_ext
    
    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        r_description = (
            "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
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
        return "    if(!identical({}, {}))".format(left, right) + "{quit('no', 1)}"

    def gen_literal(self, c):
        ''' Translate a literal expression
            c: is the literal value
        '''
        if type(c) == bool:
            return 'TRUE' if c else 'FALSE'
        return repr(c)
    
    def gen_var(self, v):
        '''Translate a variable with name v.
        '''
        return v
    
    
    def gen_list(self, l):
        '''Translate a list with elements l
           A list [ x, y, z ] translates to c(x, y, z)
        '''
        return "c(" + ", ".join(l) + ")"
    
    #there are no r tuples, but r lists are mostly immutable?
    def gen_tuple(self, t):
        '''Translate a tuple with elements t
           A tuple (x, y, z) translates to c(x, y, z) }
        '''
        return "c(" + ", ".join(t) + ")"
    
    def gen_dict(self, keys, values):
        '''Translate a dictionary with keys and values (uses R list with keys)
           A dictionary { "key1": val1, "key2": val2 } translates to list("key1" = val1, "key2" = val2)  
        '''
        return "list(" + ", ".join(f'"{k}" = {v}' for k, v in zip(keys, values)) + ")"
    
    def gen_call(self, func, args):
        '''Translate a function call `func(args)`
           A function call f(x, y, z) translates to f(x, y, z)
        '''
        return func + "(" + ", ".join(args) + ")"

if __name__ == "__main__":
    translator = RTranslator("R")
    main(translator)
