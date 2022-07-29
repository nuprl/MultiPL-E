# Authored by Arjun Guha, Abhinav Jangda, and Ming-Ho Yee
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into bash.
#
# Installed version is:
# GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
#
# The testing framework is bash_unit: https://github.com/pgrange/bash_unit
# It is a single bash script and needs to be in the same directory as the generated programs.
import re
import ast
from typing import List
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

BASH_METACHARACTERS = [" ", "\t", "\n", "\r", "|", "&", ";", "(", ")", "<", ">", "#"]

def contains_metachar(s):
    return any(metachar in s for metachar in BASH_METACHARACTERS)

def contains_whitespace(s):
    return any(ws in s for ws in [' ', '\t', '\n', '\r'])

def is_quoted(s):
    return len(s) > 0 and s[0] == '"' and s[-1] == '"'

def quote(s):
    return s if is_quoted(s) else '"' + s + '"'

def unquote(s):
    return s[1:-1] if is_quoted(s) else s

def type_to_comment(t, i):
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    match slice:
                        case ast.Subscript(ast.Name(id2), slice2, ctx2):
                            return f"# ${i} is a newline-separated, space-separated list\n"
                    return f"# ${i} is a space-separated list\n"
                case "Tuple":
                    return f"# ${i} is a space-separated list\n"
                case "Dict":
                    return f"# ${i} is a two column CSV in key,value order\n"
                case other:
                    return ""
        case other:
            return ""


class BashTranslator:

    stop = ["\n}"]

    def __init__(self, file_ext):
        self.file_ext = file_ext
        self.num = 0
        self.entry_point = ""

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        bash_description = (
            "#!/bin/bash\n# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        )
        annotations = [type_to_comment(arg.annotation, i + 1) for i, arg in enumerate(args)]
        annotations = [a for a in annotations if len(a) > 0]
        if len(annotations) > 0:
            annotations = "#\n" + "".join(annotations)
        else:
            annotations = ""
        return f"{bash_description}{annotations}{name}() {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.

        We define candidate as a wrapper function, that forwards its arguments to entry_point.
        Tests are written in the run_test function, and we use "set -e" to halt execution and
        return a non-zero status if anything fails.
        """
        return [
            # Need a closing brace, because we used it as a stop token
            "}",
            "",
            "candidate() {",
            f"    {entry_point} \"$@\"",
            "}",
            "",
            # "set -e",
            "run_test() {",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "}",
            "",
            "run_test"
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Bash is tricky, because there is no deep equality, so we just compare strings.

        Tests are of the form:
            [[ left = right ]]
        """
        return "    [[ " + left + " = " + right + " ]]"

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        res = repr(c)
        if type(c) == bool:
            res = str(c).lower()
        elif type(c) == str:
            if not c:
                return '""'
            elif contains_metachar(c):
                c = c.replace('"', '\\"').replace('\n', '\\n').replace('!', '\!')
                return quote(c)
            return c.replace('!', '\!')
        elif c is None:
            res = "None"
        return res

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    # TODO: maybe need to maintain some context to determine if we're translated a nested list...
    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [x, y, z] translates to a space-separated list "x y z"
        If all elements are quoted and contain whitespace, assume this is a nested list.
        If an element contains whitespace, then we can't translate it.
        """
        if all(is_quoted(ll) for ll in l):
            return quote("\\n".join([unquote(ll) for ll in l]))
        elif any(contains_whitespace(ll) for ll in l):
            raise Exception("Cannot translate list element that contains whitespace")
        return quote(" ".join(unquote(ll) for ll in l))

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to a space-separated list "x y z"
        If an element contains whitespace, then we can't translate it.
        """
        if any(contains_whitespace(tt) for tt in t):
            raise Exception("Cannot translate list element that contains whitespace")
        return quote(" ".join([unquote(tt) for tt in t]))

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to a CSV: key1,val1\nkey2,val2
        If an element contains whitespace, then we can't translate it.
        """
        if any(contains_whitespace(k) or contains_whitespace(v) for k, v in zip(keys, values)):
            raise Exception("Cannot translate list element that contains whitespace")
        return quote("\\n".join(unquote(k) + "," + unquote(v) for k, v in zip(keys, values)))

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to $(f x y z)
        """
        return "$(" + func + " " + " ".join(args) + ")"

    def no_completion_prompt_stub(self):
        return "echo 0"

if __name__ == "__main__":
    translator = BashTranslator("sh")
    main(translator)
