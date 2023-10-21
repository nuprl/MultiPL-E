# This script translates problems from the OpenAI HumanEval dataset into
# JavaScript.
import re
import ast
from typing import List

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")


class Translator:

    stop = [ '\n(*', '\n//', '\ntype', '\n\n' ]

    def file_ext(self):
        return "fs"

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns, description: str
    ) -> str:
        js_description = (
            "//" + re.sub(DOCSTRING_LINESTART_RE, "\n// ", description.strip()) + "\n"
        )
        arg_names = [arg.arg for arg in args]
        arg_list = " ".join(arg_names)
        return f"{js_description}let {name} {arg_list}" + " = \n"

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "let test() = ",
            f"  let candidate = {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["  0", "", "test()"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and
        right.

        Make sure you use the right equality operator for your language. For
        example, == is the wrong operator for Java and OCaml.
        """
        return f"  assert ({left} = {right})"

    def gen_literal(self, c: bool | str | int | float | None) -> str:
        if type(c) == bool:
            return "true" if c else "false"
        elif type(c) == str:
            return f'"{c}"'
        # NOTE: I believe undefined is the canonical equivalent of None.
        # Unfortunately, JavaScript also has a "null" value, but that is used
        # far less. One could write a version of deep equality that equates
        # undefined and null. Ironically, the "==" operator in JavaScript does
        # equate them, but it doesn't do deep equality. I think it is very
        # unlikely that this will be a problem.
        elif c is None:
            return "None"
        return repr(c)

    def gen_var(self, v: str) -> str:
        return v

    def gen_list(self, l: List[str]) -> str:
        return "[" + "; ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        return "(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "Map [" + "; ".join(f"({k}, {v})" for k, v in zip(keys, values)) + "]"

    def gen_call(self, func: str, args: List[str]) -> str:
        return f"{func} " + " ".join(args)
