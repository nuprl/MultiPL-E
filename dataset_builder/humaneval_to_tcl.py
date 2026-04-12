# This script translates problems from the OpenAI HumanEval dataset into Tcl.
import re
import ast
from typing import List


class Translator:

    stop = ["\nproc ", "\n#", "\n\n"]

    def file_ext(self):
        return "tcl"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str):
        tcl_description = (
            "# " + re.sub(r"\n(\s*)", "\n# ", description.strip()) + "\n" if description else ""
        )
        arg_names = [arg.arg for arg in args]
        arg_list = " ".join(arg_names)
        return f"{tcl_description}proc {name} {{{arg_list}}} {{\n"

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        return [
            "",
            "proc assert_equal {actual expected} {",
            "    if {$actual ne $expected} {",
            "        error \"Expected: $expected | Actual: $actual\"",
            "    }",
            "}",
            "",
            f"interp alias {{}} candidate {{}} {entry_point}",
            "",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return []

    def deep_equality(self, left: str, right: str) -> str:
        return f"assert_equal {left} {right}"

    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool:
            return str(c).lower()
        elif type(c) == str:
            escaped = c.replace("\\", "\\\\").replace('"', '\\"').replace("$", "\\$").replace("[", "\\[").replace("\n", "\\n")
            return f'"{escaped}"'
        elif c is None:
            return '""'
        return repr(c)

    def gen_var(self, v: str):
        return v

    def gen_list(self, l: List[str]):
        return "[list " + " ".join(l) + "]"

    def gen_tuple(self, t: List[str]):
        return "[list " + " ".join(t) + "]"

    def gen_dict(self, keys: List[str], values: List[str]):
        pairs = " ".join(f"{k} {v}" for k, v in zip(keys, values))
        return "[dict create " + pairs + "]"

    def gen_call(self, func: str, args: List[str]):
        return "[" + func + " " + " ".join(args) + "]"

    def no_completion_prompt_stub(self):
        return "    return 0\n}\n"
