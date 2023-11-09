"""
This script translates problems from the OpenAI HumanEval dataset into Elixir.
"""

import re
import ast
from typing import List, TypeVar
from base_language_translator import LanguageTranslator

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

TargetExp = str


class Translator(LanguageTranslator[TargetExp]):
    USub = "-"

    def file_ext(self) -> str:
        return "elixir"

    def stop(self) -> List[str]:
        return ["\ndefmodule", "\ndefp", "\ndef ", "\n#", "\n\n"]

    def translate_prompt(
        self, name: str, args: List[ast.arg], _returns: ast.expr, description: str
    ) -> str:
        """ """
        elixir_description = (
            "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        )
        arg_names = [arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        result_list = [
            elixir_description,
            "defmodule HumanEval do",
            f"  def candidate({arg_list}), do: {name}({arg_list})",
            f"  def {name}({arg_list}) do",
            f"    ",
        ]
        return "\n".join(result_list)

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "ExUnit.start()",
            "defmodule HumanEvalTest do",
            "  use ExUnit.Case, async: true",
            f"  test '{entry_point}' do",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["  end", "end", ""]

    def deep_equality(self, left: TargetExp, right: TargetExp) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "    assert {} == {}".format(right, left)

    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """Translate a literal expression
        c: is the literal value
        """
        # TODO: Make sure no string weirdness
        if type(c) == bool:
            return str(c).lower()
        elif type(c) == str:
            return f'"{c}"'
        elif c is None:
            return "nil"
        return repr(c)

    def gen_var(self, v: str) -> TargetExp:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[TargetExp]) -> TargetExp:
        """Translate a list with elements l
        A list [ x, y, z] translates to [ x, y, z ] (an Elixir list)
        """
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to {x, y, z}
        """
        return "{" + ", ".join(t) + "}"

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to %{"key1" => val1, "key2" => val2}
        """
        return "%{" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return f"HumanEval.{func}({', '.join(args)})"
