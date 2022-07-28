# Authored by Arjun Guha, Abhinav Jangda, and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into bash.
#
# Installed version is:
# GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
import re
import ast
from typing import List
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class BashTranslator:

    stop = ["\n}"]

    def __init__(self, file_ext):
        self.file_ext = file_ext
        self.num = 0
        self.entry_point = ""

    def gensym(self):
        num = self.num
        self.num = self.num + 1
        return f"x{num}"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        bash_description = (
            "#!/bin/bash\n# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        )
        return f"{bash_description}{name}() {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        # Reset the counter if we have a new entry point
        if self.entry_point is not entry_point:
            self.num = 0
            self.entry_point = entry_point
        return [
            # Need a closing brace, because we used it as a stop token
            "}",
            "",
            "candidate() {",
            f"    local res=$({entry_point} \"$@\")",
            "    echo $res",
            "}",
            "",
            "test() {"
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "}",
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        buffer = []
        call_args = []
        right_var = re.search("(x\d+)=", right.split("\n")[-1])
        if right_var:
            buffer.append("    " + right)
            call_args.append("\"${" + right_var.group(1) + "[*]}\"")
        else:
            call_args.append(right)
        left_var = re.search("(x\d+)=", left.split("\n")[-1])
        if left_var:
            buffer.append("    " + left)
            call_args.append("\"${" + left_var.group(1) + "[*]}\"")
        else:
            call_args.append(left)
        buffer.append("    assert_equals " + " ".join(call_args))
        buffer.append("")
        return "\n".join(buffer)

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        res = repr(c)
        if type(c) == bool:
            res = str(c).lower()
        elif c is None:
            res = ""
        return res

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [x, y, z] translates to (x y z)
        """
        return "declare -a " + self.gensym() + "=(" + " ".join(l) + ")"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to (x y z)
        """
        return "declare -a " + self.gensym() + "=(" + " ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to ([key1]=val1, [key2]=val2)
        """
        return "declare -A " + self.gensym() + "=(" + " ".join(f"[{k}]={v}" for k, v in zip(keys, values)) + ")"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        buffer = []
        call_args = []
        for a in args:
            result = re.search("^(declare -[aA] )?(x\d+)=", a)
            if result:
                buffer.append(a)
                call_args.append("\"${" + result.group(2) + "[*]}\"")
            else:
                call_args.append(a)
        buffer.append("    " + self.gensym() + "=$(" +  func + " " + " ".join(call_args) + ")")
        return "\n".join(buffer)


if __name__ == "__main__":
    translator = BashTranslator("sh")
    main(translator)
