"""
Hy translator for MultiPL-E.

- https://hylang.org/
"""

import ast
from typing import List

class Translator:

    USub = "-"

    stop = ["\n(defn", "\n;", "\n("]

    def file_ext(self):
        return "hy"

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns, description: str
    ) -> str:
        hy_args = " ".join([arg.arg for arg in args])
        hy_description = description.replace('"', '\\"')
        self.entry_point = name
        return f'(defn {name} [{hy_args}]\n  "{hy_description}"\n  '

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        self.entry_point = entry_point
        return [
            "(defn check [candidate]",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            ")",
            "",
            f"(defn test-check [] (check {self.entry_point}))",
            "",
            "(test-check)",
            "",
        ]

    def deep_equality(self, left: str, right: str) -> str:
        return f"  (assert (= {left} {right}))"

    def gen_literal(self, c: bool | str | int | float):
        if type(c) is bool:
            return "True" if c else "False"
        elif type(c) is str:
            return f'"{c}"'
        elif c is None:
            return "None"
        return repr(c)

    def gen_var(self, variable: str) -> str:
        return variable

    def gen_list(self, list: List[str]) -> str:
        return "[" + " ".join(list) + "]"

    def gen_tuple(self, tuple: List[str]) -> str:
        return "#(" + " ".join(tuple) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        pairs = " ".join(f"{k} {v}" for k, v in zip(keys, values))
        return "{" + pairs + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        return "(" + func + " " + " ".join(args) + ")"
