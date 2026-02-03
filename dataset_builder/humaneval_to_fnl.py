"""
This script translates problems from the OpenAI HumanEval dataset into Fennel.

- Home: https://fennel-lang.org/
- Compiler: https://git.sr.ht/~technomancy/fennel
- Test library: https://git.sr.ht/~technomancy/faith
"""

import ast
from typing import List


class Translator:

    USub = "-"

    stop = ["\n(fn", "\n;", "\n("]

    def file_ext(self):
        return "fnl"

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns, description: str
    ) -> str:
        self.entry_point = name
        fnl_args = " ".join(arg.arg for arg in args)
        fnl_description = description.replace('"', '\\"')
        return f'(fn {name} [{fnl_args}]\n  "{fnl_description}"\n  '

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            "(local faith (require :faith))",
            f"(local candidate {entry_point})",
            "(fn test-human-eval []",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [")", "{: test-human-eval}"]

    def deep_equality(self, left: str, right: str) -> str:
        return f"  (faith.= {right} {left})"  # Expected on the left.

    def gen_literal(self, c: bool | str | int | float):
        if type(c) is bool:
            return "true" if c else "false"
        elif type(c) is str:
            return f'"{c}"'
        elif c is None:
            return "nil"
        return repr(c)

    def gen_var(self, variable: str) -> str:
        return variable

    def gen_list(self, list: List[str]) -> str:
        return "[" + " ".join(list) + "]"

    def gen_tuple(self, tuple: List[str]) -> str:
        return "[" + " ".join(tuple) + "]"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        pairs = " ".join(f"{k} {v}" for k, v in zip(keys, values))
        return "{" + pairs + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        return "(" + func + " " + " ".join(args) + ")"
