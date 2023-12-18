import re
import ast
from typing import List
from types import NoneType

# turns multi-line docstrings into single-line comments. this captures the
# start of the line.
docstring_linestart_re = re.compile("""\n(\s+)*""")

optional_def = "datatype Optional<T> = None | Some(value: T)\n\n"

def coerce(expr: str, type) -> str:
    def coerce_to_maybe(expr: str) -> str:
        if expr == "None":
            return "None"
        else:
            return f"Some({expr})"

    match expr, type:
        case expr, ast.Subscript(ast.Name("Optional"), _):
            return coerce_to_maybe(expr)
        case expr, ast.Name("float") | "float" if not "." in expr:
            return f"{expr}.0"
        # This is a special case for a few benchmarks which are float list but
        # contain integer literals.
        case expr, ast.Subscript(ast.Name("List"), ast.Name("float") | "float"):
            # the brackets trim [ and ]
            parts = expr[1:-1].split(", ")
            inner = ", ".join([coerce(part, "float") for part in parts])
            return f"[{inner}]"
        case _:
            return expr

class Translator:
    '''Translate Python to Dafny.
    '''

    stop = ["\n//", "\n/*", "\nfunction", "\nmethod", "\ndatatype", "\nlemma", "\nmodule", "\nclass"]

    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        daf_description = (
            "// " + description.replace("\n", "\n// ") +
            "\n" if description else ""
        )
        self.type = [[arg.annotation for arg in args], returns]
        self.needs_optional = False

        def translate_arg(arg):
            ty = ": " + self.pytype_to_daftype(arg.annotation)
            return arg.arg + ty
        arg_strings = [translate_arg(arg) for arg in args]
        return_type = ": " + self.pytype_to_daftype(returns)

        self.ret_type = return_type.replace(": ", "")

        arg_list = ", ".join(arg_strings)
        self.func_name = name

        if self.needs_optional:
            daf_description = optional_def + daf_description

        return f"{daf_description}method {name}({arg_list}) returns (result {return_type})\n{{"

    def pytype_to_daftype(self, ann: ast.expr | None) -> str:
        '''
        Traverses an AST annotation and translates Python type annotation to
        Dafny type
        '''

        if ann == None:
            raise Exception(f"No annotation")

        match ann:
            # Subscripts
            case ast.Subscript(ast.Name(id), slice, ctx):
                match id:
                    case "List":
                        return f"seq<{self.pytype_to_daftype(slice)}>"
                    case "Union":
                        raise Exception("Dafny does not have untagged unions.")
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.pytype_to_daftype(elem) for elem in elts]
                                return f"({', '.join(tys)})"
                            case other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        match slice:
                            case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                                key, value = self.pytype_to_daftype(k), self.pytype_to_daftype(v)
                                return f"map<{key}, {value}>"
                            case other:
                                raise Exception(f"Bad dict: {slice}")
                    case "Optional":
                        self.needs_optional = True
                        return f"Optional<{self.pytype_to_daftype(slice)}>"
                    case other:
                        raise Exception(f"Bad generic {other}")
            # Literals
            case ast.Name(id="str") | "str":
                return "string"
            case ast.Name(id="int") | "int":
                return "int"
            case ast.Name(id="float") | "float":
                return "real"
            case ast.Name(id="bool") | "bool":
                return "bool"
            case ast.Name(id="None") | "None":
                raise Exception("Dafny does not have None")
            # Misc
            case None:
                raise Exception("Implicitly untyped argument None")
            case ast.Name("Any"):
                raise Exception("Dafny does not have Any type in Prelude")
            case ast.Name(x):
                raise Exception(f"Unknown name {x}")
            case ast.Constant(Ellipsis):
                raise Exception("No ellipsis!")
            case _other:
                raise Exception(f"Unknown annotation: {ann}")

    def file_ext(self):
        return "dfy"

    def __init__(self):
        self.type = None

    def deep_equality(self, left, right):
        """
        All tests use if_then_else to compare equality between left and right.
        In Dafny, == compares according to the Eq instance.
        """
        return f"  result := {left};\n  expect result == {right}, \"assertion failed\";"

    def test_suite_prefix_lines(self, _):
        """
        This code goes at the start of the test suite.
        """
        return [
            "\nmethod Main() {\n",
            "  var result: " + self.ret_type + ";\n",
        ]

    def test_suite_suffix_lines(self):
        """
        This code goes at the end of the test suite.
        """
        return [
            "}",
        ]


    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool:
            return str(c).lower()
        if type(c) == str:
            return f'"{c}"'
        if type(c) == NoneType:
            return "None"
        return repr(c)

    def gen_var(self, name: str):
        return name

    def gen_list(self, elements: List[str]):
        return f"[{', '.join(elements)}]"

    def gen_tuple(self, elements: List[str]):
        return f"({', '.join(elements)})"

    def gen_dict(self, keys, values):
        return f"map[{', '.join([f'{k} => {v}' for k, v in zip(keys, values)])}]"

    def gen_call(self, func: str, args: List[str]):
        if func == self.func_name:
            args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return f"{func}({', '.join(args)})"

    def finalize(self, result, context) -> str:
        match context:
            case "lhs":
                return result
            case "rhs":
                return coerce(result, self.type[1])
            case _other:
                raise Exception("bad context to finalize")
