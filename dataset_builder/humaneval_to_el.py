"""
This script translates problems from the OpenAI HumanEval dataset into Emacs Lisp.

- Home: https://www.gnu.org/software/emacs/
- Reference manual: https://www.gnu.org/software/emacs/manual/elisp.html
- Test library: https://www.gnu.org/software/emacs/manual/ert.html
"""

import ast
from typing import List


class Translator:

    USub = "-"

    stop = ["\n(defun", "\n;", "\n("]

    def file_ext(self):
        return "el"

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns, description: str
    ) -> str:
        self.entry_point = name
        el_preamble = ";;; -*- lexical-binding: t; -*-"
        el_args = " ".join(arg.arg for arg in args)
        el_description = description.replace('"', '\\"')
        return f'{el_preamble}\n(defun {name} ({el_args})\n  "{el_description}"\n  '

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            f"(defalias #'candidate #'{entry_point})",
            "(ert-deftest test-human-eval ()",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [")"]

    def deep_equality(self, left: str, right: str) -> str:
        return f"  (should (equal {left} {right}))"

    def gen_literal(self, c: bool | str | int | float):
        if type(c) is bool:
            return "t" if c else "nil"
        elif type(c) is str:
            return f'"{c}"'
        elif c is None:
            return "nil"
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
