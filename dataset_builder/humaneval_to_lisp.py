"""
MultiPL-E translator of OpenAI HumanEval into Common Lisp.
Author: Rudolf Adamkovič <rudolf@adamkovic.org>

- MultiPL-E: https://github.com/nuprl/MultiPL-E
- Common Lisp: https://lisp-lang.org/
- HyperSpec: https://www.lispworks.com/documentation/HyperSpec/Front/index.htm
- Steel Bank Common Lisp: https://www.sbcl.org/
- FiveAM: https://fiveam.common-lisp.dev/
"""

import ast
from typing import List


class Translator:

    USub = "-"

    stop = ["\n(defun", "\n;", "\n("]

    preamble = ""

    def file_ext(self):
        return "lisp"

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns, description: str
    ) -> str:
        self.entry_point = name
        lisp_args = " ".join(arg.arg for arg in args)
        lisp_description = description.replace('"', '\\"')
        return (
            "(require :asdf)\n"
            "(asdf:load-system :alexandria)\n"
            "(asdf:load-system :serapeum)\n"
            "(asdf:load-system :cl-ppcre)\n"
            "(use-package :alexandria)\n"
            "(use-package :serapeum)\n"
            "(shadowing-import 'cl-ppcre:scan)\n"
            "(use-package :cl-ppcre)\n"
            f'(defun {name} ({lisp_args})\n'
            f'  "{lisp_description}"\n'
            f'  '
        )

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            "(require :asdf)",
            "(asdf:load-system :fiveam)",
            "(fiveam:def-suite* human-eval)",
            f"(defmacro candidate (&rest args) `({entry_point} ,@args))",
            "(fiveam:test main"
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            ")",
            "(fiveam:run! 'human-eval)"
        ]

    def deep_equality(self, left: str, right: str) -> str:
        return f"(fiveam:is (equal {left} {right}))"

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
