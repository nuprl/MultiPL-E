# This script translates problems from the OpenAI HumanEval dataset into Lua.
import re
import ast
from typing import List
from base_language_translator import LanguageTranslator

TargetExp = str

class Translator(LanguageTranslator[TargetExp]):

    def stop(self):
        return ["\nlocal", "\nfunction", "\n--", "\n\n"]

    def file_ext(self) -> str:
        return "lua"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns: ast.expr, description: str) -> str:
        lua_description = (
            "-- " + description.replace("\n", "\n-- ") + "\n" if description else ""
        )
        arg_names = [arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        return f"{lua_description}local function {name}({arg_list})\n"

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
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

    def deep_equality(self, left: TargetExp, right: TargetExp) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "    lu.assertEquals({}, {})".format(left, right)

    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        return repr(c)

    def gen_var(self, v: str) -> TargetExp:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[TargetExp]) -> TargetExp:
        """Translate a list with elements l
        A list [ x, y, z] translates to { x, y, z }
        """
        return "{" + ", ".join(l) + "}"

    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "{" + ", ".join(t) + "}"

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "{" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"
