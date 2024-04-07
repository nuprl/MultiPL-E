import re
import ast
from typing import List


class Translator:

    USub = "-"

    stop = ['\n(def', '\n;', '\n(']

    def file_ext(self):
        return "clj"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        # print(description)
        clojure_description = f'"{description}"' if description else ""
        arg_names = [arg.arg for arg in args]
        arg_list = " ".join(arg_names)
        self.entry_point = name
        postlude = f"{clojure_description}\n[{arg_list}]\n"
        postlude = "  " + re.sub(r'\n', r'\n  ', postlude)
        sig =  f"(defn {name}\n{postlude}"
        return sig

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return ["(require '[clojure.test :refer [deftest is run-test]])\n", f"(def candidate {entry_point})\n", "(deftest test-humaneval\n"]

    def test_suite_suffix_lines(self) -> List[str]:
        return [")", "", "(run-test test-humaneval)"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "  (is (= {} {}))".format(left, right)

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return "true" if c else "false"
        elif type(c) == str:
            return f'"{c}"'
        elif c is None:
            return "nil"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        return "[" + " ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        return "[" + " ".join(t) + "]"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "{" + " ".join(f"{k} {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to (f x y z)
        """
        return "(" + func + " " + " ".join(args) + ")"
