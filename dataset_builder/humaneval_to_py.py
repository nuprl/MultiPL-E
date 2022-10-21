# This script translates problems from the OpenAI HumanEval dataset into Python.
# It may seem silly, since the HumanEval dataset is already in Python. But,
# we use this script uniformly across all languages to translate the dataset
# in various ways.
import ast
from typing import List

from base_language_translator import LanguageTranslator


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

TargetExp = str

class Translator(LanguageTranslator[TargetExp]):

    def stop(self):
        return ["\ndef", "\n#", "\nif", "\nclass"]

    def file_ext(self):
        return "py"

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
        return f"    assert {left} == {right}"

    def gen_literal(self, c: bool | str | int | float | None):
        return repr(c)

    def gen_var(self, v: str) -> str:
        return v

    def gen_list(self, l: List[str]) -> str:
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        trailing = "," if len(t) == 1 else ""
        return "(" + ", ".join(t) + trailing + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "{ " + ", ".join(f'{k}: {v}' for k, v in zip(keys, values)) + " }"

    def gen_call(self, func: str, args: List[str]) -> str:
        return func + "(" + ", ".join(args) + ")"

