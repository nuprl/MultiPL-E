import re
import ast
from typing import List

# Turns multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)*""")

def to_camel_case(str):
    '''
    Convert string from snake_case to camelCase.
    '''
    camel_string = "".join(x.capitalize() for x in str.lower().split("_"))
    return str[0].lower() + camel_string[1:]

def coerce(expr: str, type) -> str:
    def coerce_to_maybe(expr: str) -> str:
        if expr == "None":
            return "Nothing"
        else:
            return f"Just ({expr})"

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
    '''Translate Python to Haskell.
    '''

    stop = ["\n\n", "\n{-", "\n-- |", "\n--", "\ntype", "\ndata", "\nnewtype"]

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str):
        comment_start = "-- | " # haddock comment string

        hs_description = (
            comment_start + re.sub(DOCSTRING_LINESTART_RE, "\n" + "--  ", description.strip()) + "\n"
        )

        self.type = [[arg.annotation for arg in args], returns]

        function_name = to_camel_case(name)


        try:
            # The type declaration, foo :: Bar -> Baz -> Biz
            type_decl_list = ([f"{self.pytype_to_hstype(arg.annotation)}" for arg in args] +
                    [f"{self.pytype_to_hstype(returns)}"])
            type_decl = function_name + " :: " + " -> ".join(type_decl_list)
        except Exception as e:
            print(e)
            return None

        # the function declaration, foo bar baz biz = ...
        func_decl_list = [f"{arg.arg}" for arg in args]
        func_decl = function_name + " " + " ".join(func_decl_list) + " ="

        return f"{hs_description}{type_decl}\n{func_decl}"

    def pytype_to_hstype(self, ann: ast.expr | None) -> str:
        '''
        Traverses an AST annotation and translates Python type annotation to
        Haskell type
        '''

        if ann == None:
            raise Exception(f"No annotation")

        match ann:
            # Subscripts
            case ast.Subscript(ast.Name(id), slice, ctx):
                match id:
                    case "List":
                        return f"[{self.pytype_to_hstype(slice)}]"
                    case "Union":
                        raise Exception("Haskell does not have untagged unions.")
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.pytype_to_hstype(elem) for elem in elts]
                                return f"({', '.join(tys)})"
                            case other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        match slice:
                            case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                                key, value = self.pytype_to_hstype(k), self.pytype_to_hstype(v)
                                return f"[({key}, {value})]"
                            case other:
                                raise Exception(f"Bad dict: {slice}")
                    case "Optional":
                        return f"Maybe {self.pytype_to_hstype(slice)}"
                    case other:
                        raise Exception(f"Bad generic {other}")
            # Literals
            case ast.Name(id="str") | "str":
                return "String"
            case ast.Name(id="int") | "int":
                return "Int"
            case ast.Name(id="float") | "float":
                return "Float"
            case ast.Name(id="bool") | "bool":
                return "Bool"
            case ast.Name(id="None") | "None":
                return "Nothing"
            # Misc
            case None:
                raise Exception("Implicitly untyped argument None")
            case ast.Name("Any"):
                raise Exception("Haskell does not have Any type in Prelude")
            case ast.Name(x):
                raise Exception(f"Unknown name {x}")
            case ast.Constant(Ellipsis):
                raise Exception("No ellipsis!")
            case _other:
                raise Exception(f"Unknown annotation: {ann}")

    def file_ext(self):
        return "hs"

    def __init__(self):
        self.type = None

    # FIXME: Haskell's Prelude does not include assert. Using hacky if_then_else
    def deep_equality(self, left, right):
        """
        All tests use if_then_else to compare equality between left and right.
        In Haskell, == compares according to the Eq instance.
        """
        return f"  if {left} == {right} then pure () else error \"assertion failed\""

    def test_suite_prefix_lines(self, entry_point):
        """
        This code goes at the start of the test suite.
        """
        return [
            "\nmain :: IO ()",
            "main = do"
            f"\n  let candidate = {to_camel_case(entry_point)}"
        ]

    def test_suite_suffix_lines(self):
        """
        This code goes at the end of the test suite.
        """
        return [
            "  pure ()"
        ]


    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool:
            return str(c)
        if type(c) == str:
            return f'"{c}"'
        if type(c) == int:
            if c < 0:
                return f"({repr(c)})"
            else:
                return repr(c)
        if type(c) == float:
            return repr(c)
        return "Nothing"

    def gen_var(self, name: str):
        # TODO: verify to_camel_case is necessary in gen_var
        return to_camel_case(name)

    def gen_list(self, elements: List[str]):
        return f"[{','.join(elements)}]"

    def gen_tuple(self, elements: List[str]):
        return f"({', '.join(elements)})"

    def gen_dict(self, keys, values):
        return f"[{', '.join([f'({k}, {v})' for k, v in zip(keys, values)])}]"

    def gen_call(self, func: str, args: List[str]):
        if func == "candidate":
            args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return f"{func} {' '.join(args)}"

    def finalize(self, result, context) -> str:
        match context:
            case "lhs":
                return result
            case "rhs":
                return coerce(result, self.type[1])
            case _other:
                raise Exception("bad context to finalize")
