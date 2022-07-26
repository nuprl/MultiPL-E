# Authored by Arjun Guha and Abhinav Jangda
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Lua.
import re
from typing import List
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class LuaTranslator:

    USub = "-"

    # NOTE(arjun): Seems like reasonable stop sequences for Lua
    stop = ["\nlocal", "\nfunction", "\n--", "\n\n"]

    def __init__(self, file_ext):
        self.file_ext = file_ext

    def translate_prompt(self, name: str, args: List[str], description: str) -> str:
        lua_description = (
            "-- " + re.sub(DOCSTRING_LINESTART_RE, "\n-- ", description.strip()) + "\n"
        )
        return f"{lua_description}local function {name}({args})\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "lu = require('luaunit')",
            "",
            "function test_humaneval()",
            f"local candidate = {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["end", "", "os.exit(lu.LuaUnit.run())"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "    lu.assertEquals({}, {})".format(left, right)

    # NOTE(arjun): Really, no Nones?
    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        return repr(c)

    def gen_unaryop(self, op: str, v: str) -> str:
        """Translate a unary operation (op, v)"""
        return op + v

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to { x, y, z }
        """
        return "{" + ", ".join(l) + "}"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "{" + ", ".join(t) + "}"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "{" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"


if __name__ == "__main__":
    translator = LuaTranslator("lua")
    main(translator)
