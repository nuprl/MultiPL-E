import re
import ast
from typing import List
from base_language_translator import LanguageTranslator

DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

needs_hashmap = False

def to_camel_case(snake_str):
    components = snake_str.split('_')
    # We capitalize the first letter of each component except the first one
    # with the 'title' method and join them together.
    return components[0] + ''.join(x.title() for x in components[1:])

def translate_type(t):
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    return "MutableList<" + translate_type(slice) + ">"
                case "Union":
                    match slice: 
                        case ast.Tuple(elts, _ctx): 
                            raise Exception("No unions in Kotlin")
                        case other: 
                            raise Exception(f"Unexpected slice: {slice}")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            if len(tys) == 2:
                                return "Pair<" + ", ".join(tys) + ">"
                            # perhaps not needed, but putting it here just in case
                            elif len(tys) == 3:
                                return "Triple<" + ", ".join(tys) + ">"
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            needs_hashmap = True
                            return "Map<" + key + ", " + value + ">"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return translate_type(slice) + "?"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "Int"
        case ast.Name("float"):
            return "Double"
        case ast.Name("bool"):
            return "Boolean"
        case ast.Name("str") | "str":
            return "String"
        case None:
            raise Exception("No None class in Kotlin")
        # nothing was changed below this comment
        case ast.Name("Any"):
            return "any"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            raise Exception("No ellipses!")
        case _other:
            raise Exception(f"unknown annotation: {t}")

TargetExp = str

def coerce(expr: str, type) -> str: 
    match expr, type:
        case _: 
            return expr

class Translator:

    stop = [ '\nfun ', '\n/*', '\n//', '\nclass' ]

    def __init__(self):
        global needs_hashmap
        self.type = None
        self.is_candidate_result = False

    def file_ext(self):
        return "kt"

    # NOTE: this definition translates the prompt but not the examples in them, the examples provided are very much still in Python syntax
    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        global needs_hashmap
        # added this line to substitute candidate in for entry point later on
        self.entry_point = to_camel_case(name)
        js_description = "// " + re.sub(DOCSTRING_LINESTART_RE, "\n// ", description.strip().replace(name, self.entry_point)) + "\n"
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
        return f"{js_description}fun {to_camel_case(name)}({arg_list}): {return_type} "+"{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return ["fun main() {"]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        if self.is_candidate_result:
            right = coerce(right, self.type[1])
            self.is_candidate_result = False
            # replacing all calls to candicate in left to self.entry_point
            left = left.replace("candidate", self.entry_point)
            # flipped, since kotlin requires (expected, actual)
        return f"  assert({right} == {left});"

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
            return "undefined"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        # if l is empty, then the compiler cannot infer the type 
        # of the list, in that case, make it a mutableListOf any
        if len(l) > 0:
            return "mutableListOf(" + ", ".join(l) + ")"
        else:
            return "mutableListOf<Any>()"
    
    def gen_tuple(self, t: List[str]) -> str:
        if (len(t) == 2):
            return "Pair(" + ", ".join(t) + ")"
        elif (len(t) == 3):
            return "Triple(" + ", ".join(t) + ")"
        
    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return "mutableMapOf(" + ", ".join(f"{k} to {v}" for k, v in zip(keys, values)) + ")"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        if func == "candidate":
            self.is_candidate_result = True
            args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return f"{func}(" + ", ".join(args) + ")"
