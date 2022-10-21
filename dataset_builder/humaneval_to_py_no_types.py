# This script translates problems from the OpenAI HumanEval dataset into Python.
# It may seem silly, since the HumanEval dataset is already in Python. But,
# we use this script uniformly across all languages to translate the dataset
# in various ways.
import ast
from typing import List
from generic_translator import main
from base_language_translator import LanguageTranslator


TargetExp = str

class Translator(LanguageTranslator[TargetExp]):

    def stop(self):
        return ["\ndef", "\n#", "\nif", "\nclass"]

    def file_ext(self):
        return "notypes.py"

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        py_description = "\"\"\"" + description + "\"\"\""
        arg_list = ", ".join([arg.arg for arg in args])
        return f"def {name}({arg_list}):\n    {py_description}\n"

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


if __name__ == "__main__":
    main(Translator())

