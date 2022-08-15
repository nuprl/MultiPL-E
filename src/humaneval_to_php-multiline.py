# This script translates problems from the OpenAI HumanEval dataset into PHP.
#
# PHP can be installed with:
#   sudo apt install php-cli
#
# Installed version is:
# PHP 8.1.2 (cli) (built: Jul 21 2022 12:10:37) (NTS)
# Copyright (c) The PHP Group
# Zend Engine v4.1.2, Copyright (c) Zend Technologies
#    with Zend OPcache v8.1.2, Copyright (c), by Zend Technologies
import re
import ast
from typing import List
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class Translator:

    stop = ["\nfunction", "\n?>", "\n//", "\n#" ]

    def file_ext(self):
        return "php"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        php_description = (
            "<?php\n/* " + re.sub(DOCSTRING_LINESTART_RE, "\n", description.strip()) + "*/\n"
        )
        arg_names = ["$" + arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        return f"{php_description}function {name}({arg_list}) {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "function candidate(...$args) {",
            f"    return {entry_point}(...$args);",
            "}",
            "",
            "function test(): void {"
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "}",
            "",
            "test();"
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return f"""    if ({left} !== {right}) {{ throw new Exception("Test failed!"); }}"""

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value

        PHP booleans are case insensitive, but lowercase is the convention.
        PHP uses "null" instead of "None". 
        """
        if type(c) == bool:
            return str(c).lower()
        elif type(c) == str:
            c = c.replace('"', '\\"').replace('\n', '\\n')
            return f'"{c}"'
        elif c is None:
            return "null"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [x, y, z] translates to array(x, y, z)
        """
        return "array(" + ", ".join(l) + ")"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to array( x, y, z )
        """
        return "array(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to array( "key1" => val1, "key2" => val2 )
        """
        return "array(" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + ")"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"


if __name__ == "__main__":
    translator = Translator()
    main(translator)
