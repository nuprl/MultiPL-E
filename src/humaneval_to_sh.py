# This script translates problems from the OpenAI HumanEval dataset into bash.
#
# Installed version is:
# GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)
#
# Note: We evaluate with Bash 4.2
#
# Bash is not a general-purpose programming language, and has its own quirks to work around.
# In particular, the main datatype is string. While Bash has arrays and associative arrays,
# the convention is to use strings with spaces and/or newlines as separators.
#
# This makes the translation tricky, as we can't pass strings around and concatenate them.
# If we have a list, we need to know if its elements are lists or base values, since
# that determines the list encoding. Therefore, we defer translation and pass Python
# values around. Only deep_equality() and gen_call() need to return strings, so
# they call py_to_bash() to perform the translation.
#
# Known limitations:
#   1. List elements containing whitespace are not supported
#   2. More than two layers of nesting is not supported
#   3. Nested dictionaries are not supported
#
# 2 and 3 do not occur in the dataset, but 1 does.
# The translator tries to check for these cases and terminates if they are encountered.
import re
import ast
from typing import List

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

WHITESPACE = [' ', '\t', '\n', '\r']

def contains_whitespace(s):
    return any(ws in s for ws in WHITESPACE)

def is_quoted(s):
    return len(s) > 0 and s[0] == '"' and s[-1] == '"'

def quote(s):
    return s if is_quoted(s) else '"' + s + '"'

def unquote(s):
    return s[1:-1] if is_quoted(s) else s

# Bash does not have type annotations, but we include comments explaining the encoding the tests use.
# List and Tuple -> space-separated list
# Nested list -> newline-separated, space-separated list
# Dictionary -> two column CSV in key,value order
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
                    return f"# ${i} is an argument\n"
        case ast.Name("int"):
            return f"# ${i} is an integer\n"
        case ast.Name("float"):
            return f"# ${i} is a floating point\n"
        case ast.Name("str"):
            return f"# ${i} is a string\n"
        case ast.Name(x):
            return f"# ${i} is a ${x}\n"
        case other:
            return f"# ${i} is an argument\n"

# Translation of Python values into Bash strings is deferred until this point.
# Non-list values have already been translated to Bash syntax.
# There are three cases:
#   1.  Empty list: this is translated to an empty string.
#   2a. List of dictionaries: not supported
#   2b. Nested list with more than two layers of nesting: not supported
#   2c. Nested list: the inner lists are recursively translated (which results in
#       a quoted, space-separated string), unquoted, and then joined with newlines.
#   2d. List: the elements are recursively translated (which results in quoted strings),
#       unquoted, and then joined with spaces.
#   3a. Nested dictionary: not supported
#   3b. Dictionary: the dictionary is translated to CSV format, in key,value order.
def py_to_bash(val):
    if type(val) is list and len(val) == 0:
        return '""'
    elif type(val) is list:
        if all(type(v) is dict for v in val):
            raise Exception("Cannot translate list with dictionary as elements")
        elif all(type(vv) is list for v in val for vv in v):
            raise Exception("Cannot translate list with more than two layers of nesting")
        elif all(type(v) is list for v in val):
            # Translate list to a string where the inner list is space separated and the outer list is newline separated
            return quote("\\n".join([unquote(py_to_bash(v)) for v in val]))
        else:
            # Translate list to a string with elements separated by spaces
            return quote(" ".join([unquote(py_to_bash(v)) for v in val]))
    elif type(val) is dict:
        if any(type(v) is not str for v in val.values()):
            raise Exception("Cannot translate nested dictionary")
        # Translate dictionary to CSV format
        return quote("\\n".join(unquote(k) + "," + unquote(v) for k, v in val.items()))
    else:
        return val

class Translator:

    stop = ["\n}"]

    def __init__(self):
        self.num = 0
        self.entry_point = ""
        self.skip_annotations = False

    def file_ext(self):
        return "sh"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        bash_description = (
            "#!/bin/bash\n# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        )
        if self.skip_annotations == False:
            annotations = [type_to_comment(arg.annotation, i + 1) for i, arg in enumerate(args)]
            annotations = "#\n" + "".join(annotations) if len(annotations) > 0 else ""
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
            "set -e",
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

        Up until this point, we've been passing Python values around.
        Now we need to do the actual translation. This allows us to keep track of the list structure.
        """
        return "    [[ " + py_to_bash(left) + " = " + py_to_bash(right) + " ]]"

    def gen_literal(self, c: bool | str | int | float) -> str:
        """Translate a literal expression
        c: is the literal value
        """
        res = repr(c)
        if type(c) == bool:
            res = str(c).lower()
        elif type(c) == str:
            # Escape strings
            res = c.replace('\\', '\\\\').replace('\n', '\\n').replace('"', '\\"').replace('$', '\\$').replace('!', '\\!')
        elif c is None:
            res = "None"
        # Quote everything
        return quote(res)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List):
        """Translate a list with elements l
        Ultimately, a list [x, y, z] translates to a space-separated list "x y z"
        Ultimately, a nested list [[a, b], [c, d]] translates to a newline-separated, space-separated list "a b\nc d"

        Because we need to know what values we're passing around, pass around Python values.

        If any element contains whitespace, then we can't translate it.
        """
        if any(contains_whitespace(ll) for ll in l):
            raise Exception("Cannot translate list element that contains whitespace")
        return l

    def gen_tuple(self, t: List):
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to a space-separated list "x y z"

        Because we need to know what values we're passing around, pass around Python values.

        If any element contains whitespace, then we can't translate it.
        """
        if any(contains_whitespace(tt) for tt in t):
            raise Exception("Cannot translate tuple element that contains whitespace")
        return t

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to a CSV: key1,val1\nkey2,val2

        Because we need to know what values we're passing around, pass around Python values.

        If any element contains whitespace, then we can't translate it.
        """
        if any(contains_whitespace(k) or contains_whitespace(v) for k, v in zip(keys, values)):
            raise Exception("Cannot translate list element that contains whitespace")
        return dict(zip(keys, values))

    def gen_call(self, func: str, args: List) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to $(f x y z)

        Up until this point, we've been passing Python values around.
        Now we need to do the actual translation. This allows us to keep track of the list structure.
        """
        return "$(" + func + " " + " ".join([py_to_bash(a) for a in args]) + ")"

    def no_completion_prompt_stub(self):
        return "echo 0"
