# Authored by Arjun Guha and Abhinav Jangda
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Python.
import re
import ast
from typing import List
from generic_translator import main


def translate_type(t, needs):
    match t:
        case ast.Subscript(ast.Name(id), ast.Tuple(elts), ctx):
            needs(id)
            tys = [translate_type(elem, needs) for elem in elts]
            return id + "[" + ", ".join(tys) + "]"
        case ast.Subscript(ast.Name(c), of):
            needs(c)
            return c + "[" + translate_type(of, needs) + "]"
        case ast.Name("Any" as x):
            needs(x)
            return x
        case ast.Name(x):
            return x
        case "str" | "float":
            return t
        case ast.Constant(None):
            return "None"
        case ast.Constant(Ellipsis):
            return "..."
        case ast.Constant(x):
            print(f"unknown constant {x} {type(x)}")
        case _other:
            print("other")
            raise Exception(f"unknown annotation: {t}")

class PythonTranslator:

    # NOTE(arjun): Seems like reasonable stop sequences for Python
    stop = ["\ndef", "\n#", "\nif", "\nclass"]

    def __init__(self, file_ext):
        self.file_ext = file_ext
        self.entry_point = None

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        py_description = "\"\"\"" + description + "\"\"\""
        needs = []
        add_need = lambda x: needs.append(x) if not x in needs else None
        def name_and_type(arg):
            if arg.annotation is None:
                return arg.arg
            else:
                return f"{arg.arg}: {translate_type(arg.annotation, add_need)}"
        arg_list = ", ".join([name_and_type(arg) for arg in args])
        ann = "" if returns is None else f" -> {translate_type(returns, add_need)}"
        imports = "" if needs == [] else f"from typing import {', '.join(needs)}\n\n"
        return f"{imports}def {name}({arg_list}){ann}:\n    {py_description}\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        self.entry_point = entry_point
        return [
            "def check(candidate):",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "",
            "def test_check():",
            f"    check({self.entry_point})",
            "",
            "test_check()",
            "",
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return f"    assert {left} == {right}"

    # NOTE(arjun): Really, no Nones?
    def gen_literal(self, c: bool | str | int | float | None):
        """Translate a literal expression
        c: is the literal value
        """
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        """
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        """
        trailing = "," if len(t) == 1 else ""
        return "(" + ", ".join(t) + trailing + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "{ " + ", ".join(f'{k}: {v}' for k, v in zip(keys, values)) + " }"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"


if __name__ == "__main__":
    translator = PythonTranslator("py")
    main(translator)

