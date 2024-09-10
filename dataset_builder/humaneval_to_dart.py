# This script translates problems from the OpenAI HumanEval dataset into Dart.
#
# Note that for the Dart translation we reject Union types.

import re
import ast
from typing import List
from base_language_translator import LanguageTranslator

DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

needs_hashmap = False

def translate_type(t):
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    if translate_type(slice) == "dynamic":
                        return "List"
                    else:
                        return "List<" + translate_type(slice) + ">"
                case "Union":
                    raise Exception("Union unsupported")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            return "(" + ", ".join(tys) + ")"
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            needs_hashmap = True
                            return f"Map<{key}, {value}>"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return translate_type(slice) + "?"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "int"
        case ast.Name("float"):
            return "double"
        case ast.Name("bool"):
            return "bool"
        case ast.Name("str") | "str":
            return "String"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            return "dynamic"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            raise Exception("ellipsis unsupported")
        case _other:
            raise Exception(f"unknown annotation: {t}")

TargetExp = str

def coerce(expr: str, type) -> str: 
    match expr, type:
        case _: 
            return expr

class Translator:

    stop = [ '\n}' ]

    def __init__(self):
        global needs_hashmap
        self.type = None
        self.is_candidate_result = False

    def file_ext(self):
        return "dart"

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        global needs_hashmap
        description = "//" + re.sub(DOCSTRING_LINESTART_RE, "\n// ", description.strip()) + "\n"
        # Store this for later coercions on tests
        needs_hashmap = False
        self.type = [[arg.annotation for arg in args], returns]
        def translate_arg(arg):
            return translate_type(arg.annotation) + " " + arg.arg
        arg_strings = []
        return_type = ""
        try:
            arg_strings = [translate_arg(arg) for arg in args]
            return_type = translate_type(returns)
        except Exception as e:
            print(e)
            return None
        arg_list = ", ".join(arg_strings)
        return f"{description}{return_type} {name}({arg_list}) " + "{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            # Since we use "\n}" as the stop token for the function body, we start
            # the test suite with "}" to close the generated function.
            "}",
            "void main() {",
            f"  final candidate = {entry_point};",
            ""
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "}",
            "",
            "void expect(dynamic a, dynamic b) {",
            "  if (a == b) return;",
            "",
            "  if (a is List && b is List) {",
            "    expectList(a, b);",
            "  } else if (a is Map && b is Map) {",
            "    expectMap(a, b);",
            "  } else {",
            "    throw '$a != $b';",
            "  }",
            "}",
            "",
            "void expectList(List a, List b) {",
            "  if (a.length != b.length) throw 'list lengths are not equal';",
            "",
            "  for (var i = 0; i < a.length; i++) {",
            "    expect(a[i], b[i]);",
            "  }",
            "}",
            "",
            "void expectMap(Map a, Map b) {",
            "  if (a.length != b.length) throw 'map lengths are not equal';",
            "",
            "  for (var key in a.keys) {",
            "    expect(a[key], b[key]);",
            "  }",
            "}",
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        if self.is_candidate_result:
            right = coerce(right, self.type[1])
            self.is_candidate_result = False
        return f"  expect({left}, {right});"

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return "true" if c else "false"
        elif type(c) == str:
            c = c.replace('\n','\\n')
            return f'"{c}"'
        elif c is None:
            return "null"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        return "(" + ", ".join(t) + ")"

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
