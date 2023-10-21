# This script translates problems from the OpenAI HumanEval dataset into Perl.
import re
import ast
from typing import List

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")
array_list = []

class Translator:

    USub = "-"

    stop = [ "\nsub", "\n#", "\n\n" ]

    def __init__(self):
        # See translate_pl_without_argnames.py which overrides this.
        self.name_arguments = True

    def file_ext(self):
        return "pl"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        global array_list
        perl_description = "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        arg_names = ["$"+arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        array_list = []
        return f"{perl_description}sub {name} "+"{\n    " + (f"my({arg_list}) = @_;\n" if self.name_arguments else "")

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [ "use Test::Deep;\n", "", "sub testhumaneval {",f"    my $candidate = \&{entry_point};"]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}", "", "testhumaneval();"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        arr_prefix = f"    " + "    ".join(array_list)
        return arr_prefix+f"    if(eq_deeply({left},{right})) "+"{\n        print \"ok!\" }else{\n        exit 1;\n        }"

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if c is True:
            return 1
        elif c is False:
            return "\"\""
        elif type(c) == str:
            return f'"{c}"'
        elif c is None:
            return "undef"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return f"{v}"

    def gen_list(self, l: List[str]) -> str:
        idx = len(array_list)
        #array_list.append(f"my @arg{idx} = " + "(" + ", ".join(l) + ");\n")
        return "[" + ", ".join(l) + "]" 
        #return f"\\@arg{idx}"

    def gen_tuple(self, t: List[str]) -> str:
        return "[" + ", ".join([str(t) for t in t]) + "]"
        #return "(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "{" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        if func == "candidate":
            func = f"${func}->"
        return f'{func}(' + ", ".join(args) + ")"
