# This script translates problems from the OpenAI HumanEval dataset into TypeScript.
import re
import ast
from typing import List
from base_language_translator import LanguageTranslator

DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

needs_hashmap = False


def translate_type(t):
    return translate_type_rec(t, "top")


def translate_type_rec(t):
    """
    The context is the syntactic context in which the type is being translated.

    Valid contexts are:

    - "top" - the type is either:
       + at the top level of the function signature
       + in a context where it is comma-separated such as a tuple type or
         argument list
       + in a context where it is within angle brackets such as a generic type
         argument
    - "bar" - the type is inside a bar (|) of a union type
    - "bracket" - the type is to the left of the brackets ([]) in an array type

    Based on the context, we may or may not need to insert parentheses around the
    translated type.

    Some examples:

    - a | b[] is parsed as a | (b[]) so parens are not needed
    - To get (a | b)[] we need parens

    """
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    inner = translate_type_rec(slice, "bracket")
                    return inner + "[]"
                case "Union":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type_rec(elem, "bar") for elem in elts]
                            union = " | ".join(tys)
                            if context == "bracket":
                                return f"({union})"
                            return union
                        case other:
                            raise Exception(f"Unexpected slice: {slice}")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type_rec(elem, "top") for elem in elts]
                            return "[" + ", ".join(tys) + "]"
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type_rec(
                                k, "top"
                            ), translate_type_rec(v, "top")
                            needs_hashmap = True
                            return "{" + f"[key: {key}]: {value}" + "}"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    inner = translate_type_rec(slice, "bar")
                    union = f"{inner} | undefined"
                    if context == "bracket":
                        return f"({union})"
                    return union
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "number"
        case ast.Name("float"):
            return "number"
        case ast.Name("bool"):
            return "boolean"
        case ast.Name("str") | "str":
            return "string"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            return "any"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            raise Exception("no ellipsis!!")
        case _other:
            raise Exception(f"unknown annotation: {t}")


TargetExp = str


def coerce(expr: str, type) -> str:
    match expr, type:
        case _:
            return expr


class Translator:

    stop = ["\nfunction ", "\n/*", "\n//", "\nclass"]

    def __init__(self):
        global needs_hashmap
        self.type = None
        self.is_candidate_result = False

    def file_ext(self):
        return "ts"

    def translate_prompt(
        self, name: str, args: List[ast.arg], returns, description: str
    ) -> str:
        global needs_hashmap
        js_description = (
            "//" + re.sub(DOCSTRING_LINESTART_RE, "\n// ", description.strip()) + "\n"
        )
        # Store this for later coercions on tests
        needs_hashmap = False
        self.type = [[arg.annotation for arg in args], returns]

        def translate_arg(arg):
            return arg.arg + ": " + translate_type(arg.annotation)

        arg_strings = []
        return_type = ""
        try:
            arg_strings = [translate_arg(arg) for arg in args]
            return_type = translate_type(returns)
        except Exception as e:
            print(e)
            return None
        arg_list = ", ".join(arg_strings)
        return f"{js_description}function {name}({arg_list}): {return_type} " + "{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "declare var require: any;\nconst assert = require('node:assert');\n",
            "",
            "function test() {",
            f"  let candidate = {entry_point};",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}", "", "test();"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        if self.is_candidate_result:
            right = coerce(right, self.type[1])
            self.is_candidate_result = False
        return f"  assert.deepEqual({left},{right});"

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return "true" if c else "false"
        elif type(c) == str:
            c = c.replace("\n", "\\n")
            return f'"{c}"'
        elif c is None:
            return "undefined"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        return "[" + ", ".join(t) + "]"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "{" + ", ".join(f"{k}: {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        if func == "candidate":
            self.is_candidate_result = True
            args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return f"{func}(" + ", ".join(args) + ")"
