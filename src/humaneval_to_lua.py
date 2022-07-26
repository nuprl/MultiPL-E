# Authored by Arjun Guha and Abhinav Jangda
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Lua.
import re
from typing import List
from generic_translator import main, translate_expr

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class LuaTranslator:

    # NOTE(arjun): Seems like reasonable stop sequences for Lua
    stop = ["\nlocal", "\nfunction", "\n--", "\n\n"]

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
        return "    lu.assertEquals({}, {})".format(left, right)

    USub = "-"

    def __init__(self, convert_expr, file_ext):
        self.convert_expr = convert_expr
        self.file_ext = file_ext

    def gen_literal(self, c):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        return repr(c)

    def gen_unaryop(self, op, v):
        """Translate a unary operation (op, v)"""

        return self.convert_expr(self, op) + self.convert_expr(self, v)

    def gen_var(self, v):
        """Translate a variable with name v."""
        return v

    def gen_list(self, l):
        """Translate a list with elements l
        A list [ x, y, z] translates to { x, y, z }
        """
        return "{" + ", ".join(self.convert_expr(self, e) for e in l) + "}"

    def gen_tuple(self, t):
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "{" + ", ".join(self.convert_expr(self, e) for e in t) + "}"

    def gen_dict(self, keys, values):
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return (
            "{"
            + ", ".join(
                f"[{self.convert_expr(self, k)}] = {self.convert_expr(self, v)}"
                for k, v in zip(keys, values)
            )
            + "}"
        )

    def gen_call(self, func, args):
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return (
            self.convert_expr(self, func)
            + "("
            + ", ".join(self.convert_expr(self, a) for a in args)
            + ")"
        )

    def gen_func_decl(self, name, args, description):
        lua_description = (
            "-- " + re.sub(DOCSTRING_LINESTART_RE, "\n-- ", description.strip()) + "\n"
        )
        return f"{lua_description}local function {name}({args})\n"


if __name__ == "__main__":
    translator = LuaTranslator(translate_expr, "lua")
    main(translator)
