# Authored by Arjun Guha and Yangtian Zi
# Copyright (c) 2022, Roblox Inc and Northeastern University
#
# The dmd executable is downloaded from the D language official website:
# https://dlang.org/download.html
#
# This script translates problems from the OpenAI HumanEval dataset into Dlang.
import re
import ast
from typing import List
from generic_translator import main

class DlangTranslator:

    # TODO: what is the stop sequence for it?
    stop = ["\n\n"]

    def __init__(self, file_ext):
        self.file_ext = file_ext

    def translate_type(self,t):
        match t:
            case ast.Subscript(ast.Name(id), slice, _ctx):
                match id:
                    case "List":
                        slice_type = self.translate_type(slice)
                        return f"{slice_type}[]"
                    case "Union":
                        # TODO
                        return "auto"
                    case "Tuple":
                        # Even the official documentation uses `auto` for tuples
                        return "auto"
                    case "Dict":
                        match slice:
                            case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                                key, value = self.translate_type(k), self.translate_type(v)
                                return f"{value}[{key}]"
                    case "Optional":
                        # TODO: perhaps use Nullable type?
                        return "auto"
                    case other:
                        return "auto"
            case ast.Name("int") | "int":
                return "int"
            case ast.Name("float"):
                return "float"
            case ast.Name("bool"):
                return "bool"
            case ast.Name("str") | "str":
                return "const(char)[]"
            case _other:
                return "auto"

    
    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        dlang_desc = ("/*\n" + description + "\n*/\n")
        
        arg_names_and_types = [self.translate_type(arg.annotation) + ' ' + arg.arg for arg in args]
        arg_list = ", ".join(arg_names_and_types)
        return_type = self.translate_type(returns)
        return f"{dlang_desc}{return_type} {name}({arg_list}) \n"


    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "unittest",
            "{",
            f"    alias candidate = {entry_point};",
            ""
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "}",
            "void main(){}"
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        return "    assert({} == {});".format(left, right)


    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        elif type(c) == str:
            c = c.replace('"', '\\"')
            return f'"{c}"'
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        [a, b, c] => [a, b, c]
        """
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        (a, b, c) => tuple(a, b, c)
        """
        return "tuple(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        { "key1": val1, "key2": val2 } => [ "key1": val1, "key2": val2 ]
        """
        return "[" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "]"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        f(x, y, z) => f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"
    

if __name__ == "__main__":
    translator = DlangTranslator("d")
    main(translator)
