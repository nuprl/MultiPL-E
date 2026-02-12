"""
Scheme translator for MultiPL-E.

- https://r7rs.org/
- https://r6rs.org/
- https://srfi.schemers.org/srfi-64/srfi-64.html
"""

import ast
from typing import List

class Translator:

    USub = "-"

    stop = ["\n(define", "\n;", "\n("]

    def file_ext(self):
        return "scm"

    preamble = ""

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns, description: str
    ) -> str:
        self.entry_point = name
        scm_args = " ".join(arg.arg for arg in args)
        scm_description = description.replace('"', '\\"')
        scm_prefix = f"{self.preamble}\n" if self.preamble else ""
        return f'{scm_prefix}(define ({name} {scm_args})\n  "{scm_description}"\n  '

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            '(import (srfi srfi-64))', # test library
            f'(define candidate {entry_point})',
            '(test-begin "HumanEval")'
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ['(test-end)']

    def deep_equality(self, left: str, right: str) -> str:
        return f"(test-equal {left} {right})"

    def gen_literal(self, c: bool | str | int | float):
        if type(c) is bool:
            return "#t" if c else "#f"
        elif type(c) is str:
            return f'"{c}"'
        elif c is None:
            return "#f"
        return repr(c)

    def gen_var(self, variable: str) -> str:
        return variable

    def gen_list(self, list: List[str]) -> str:
        return "(list " + " ".join(list) + ")"

    def gen_tuple(self, tuple: List[str]) -> str:
        return "(list " + " ".join(tuple) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        pairs = " ".join(f"(cons {k} {v})" for k, v in zip(keys, values))
        return "(list " + pairs + ")"

    def gen_call(self, func: str, args: List[str]) -> str:
        return "(" + func + " " + " ".join(args) + ")"
