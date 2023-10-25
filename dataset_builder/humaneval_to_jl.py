# This script translates problems from the OpenAI HumanEval dataset into Julia.
# 
# Julia is a very similar language to python, therefore, most of the translation 
# is just between various keywords. Julia includes support for arbitrary Union 
# types (with Optional being represented as Union{T, Nothing}). Since Julia is 
# (by and large) dynamically typed, no coercions or type inference are necessary 
# to generate benchmarks. 
#
# Julia can be installed by running the script from jill.sh: 
# wget https://raw.githubusercontent.com/abelsiqueira/jill/main/jill.sh
# 
# The script can both be run as root or user.
import re
import ast
from typing import List, Optional

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

# i don't want this to be global but i also don't want to pass it all the way
# through translate_type
needs_hashmap = False

def translate_type(t):
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    return "Vector{" + translate_type(slice) + "}"
                case "Union":
                    match slice: 
                        case ast.Tuple(elts, _ctx): 
                            tys = [translate_type(elem) for elem in elts]
                            return "Union{" + ", ".join(tys) + "}"
                        case other: 
                            raise Exception(f"Unexpected slice: {slice}")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            return "Tuple{" + ", ".join(tys) + "}"
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            needs_hashmap = True
                            return f"Dict{{{key}, {value}}}>"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return "Union{" + translate_type(slice) + ", Nothing}"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "Int64"
        case ast.Name("float"):
            return "Float64"
        case ast.Name("bool"):
            return "Bool"
        case ast.Name("str") | "str":
            return "String"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            return "Any"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            raise Exception("no ellipsis!!")
        case _other:
            raise Exception(f"unknown annotation: {t}")

def coerce(expr: str, type) -> str: 
    match expr, type:
        case "[]", ast.Subscript(ast.Name("List"), to): 
            return f"Vector{{{translate_type(to)}}}([])"
        case _: 
            return expr


class Translator:

    stop = ["\nfunction", "\nmacro", "\n\n"]

    def __init__(self):
        global needs_hashmap
        self.type = None
        self.is_candidate_result = False

    def file_ext(self):
        return "jl"

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> Optional[str]:
        self.type = [[arg.annotation for arg in args], returns]
        def translate_arg(arg):
            return arg.arg + "::" + translate_type(arg.annotation)
        arg_strings = []
        return_type = ""
        description = f"\"\"\"{description}\"\"\"\n"
        try:
            arg_strings = [translate_arg(arg) for arg in args]
            return_type = translate_type(returns)
        except Exception as e:
            print(e)
            return None
        arg_list = ", ".join(arg_strings)
        return f"{description}function {name}({arg_list})::{return_type} \n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "using Test",
            "",
            "@testset begin",
            "",
            f"candidate = {entry_point};",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["end\n"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        if self.is_candidate_result:
            right = coerce(right, self.type[1])
            self.is_candidate_result = False
        return f"\t@test({left} == {right})"

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        if type(c) == str:
            escaped = c.translate(str.maketrans({
                '"': r"\"",
                "$": r"\$"
            }))
            return '"' + escaped + '"'
        if c is None: 
            return "nothing"
        return repr(c)

    def gen_unaryop(self, op: str, v: str) -> str:
        """Translate a unary operation (op, v)"""
        return op + v

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to { x, y, z }
        """
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "Dict(" + ", ".join(f"{k} => {v}" for k, v in zip(keys, values)) + ")"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        if func == "candidate": 
            self.is_candidate_result = True
            args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return func + "(" + ", ".join(args) + ")"
