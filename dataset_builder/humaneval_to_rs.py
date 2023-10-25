# This script translates problems from the OpenAI HumanEval dataset into Rust.
#
# Some rust specific notes:
# 
# There are
# a few explicitly or implicitly untyped, or that use Union, and we just blow up
# on them
#
# However, this gets more complicated when we start looking at implicit
# coercions in the tests. For example, if we have
# 
# ```
# def candidate(x: Optional[int]) -> Optional[int]:
#     pass
# assert candidate(5) == 10
# ```
# 
# Then we can translate the prompt easily:
#
# ```
# fn candidate(x: Option<isize>) -> Option<isize>;
# ```
# 
# But the asserts are more complicated. Naïvely we can write:
#
# ```
#     assert_eq!(candidate(5), 10);
# ```
#
# But of course 5 is incompatible with Option, we need Some(5). So, we keep
# track of the prompt type signature and ATTEMPT (keyword attempt) to coerce the
# value to the needed type. Arbitrary coercions would be difficult. Right now,
# we only support non-generic coercions (except for two special cases which DO
# come up in the benchmarks).
#
# Also, rust is not good enough to perform type inference on an empty
# vector. So we take the needed type and annotate the vec with it. Again, this
# means generics over Vec *do not work*. This doesn't come up in the benchmarks

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
                    return "Vec<" + translate_type(slice) + ">"
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
                            return f"HashMap<{key}, {value}>"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return "Option<" + translate_type(slice) + ">"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "isize"
        case ast.Name("float"):
            return "f64"
        case ast.Name("bool"):
            return "bool"
        case ast.Name("str") | "str":
            return "String"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            raise Exception("explicitly untyped argument")
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            raise Exception("no ellipsis!!")
        case _other:
            raise Exception(f"unknown annotation: {t}")

def coerce(expr: str, type) -> str:
    def coerce_to_option(expr: str) -> str:
        if expr == "None":
            return expr
        else:
            return f"Some({expr})"
    match expr, type:
        case expr, ast.Subscript(ast.Name("Optional"), _):
            return coerce_to_option(expr)
        case "vec![]", ast.Subscript(ast.Name("List"), to):
            return f"Vec::<{translate_type(to)}>::new()"
        case "vec![]", ast.Name("str") | "str":
            print("[] was treated as a string in python. This is suspicious, but happens a few times!")
            return f"String::new()"
        case "HashMap::from([])", ast.Subscript(ast.Name("Dict", ast.Tuple([k, v]))):
            return f"HashMap::<{translate_type(k)}, {translate_type(k)}>::new()"
        case expr, ast.Name("float") | "float" if not "." in expr:
            return f"{expr}.0"
        # This is a special case for a few benchmarks which are Vec<f64> but
        # contain integer literals. Again, this could be done more rigorously
        case expr, ast.Subscript(ast.Name("List"), ast.Name("float") | "float"):
            # the brackets trim vec![ and ]
            parts = expr[5:-1].split(", ")
            inner = ", ".join([coerce(part, "float") for part in parts])
            return f"vec![{inner}]"
        # This is a special case for just one benchmark, which uses (Option<_>, Option<_>)
        # There is something more rigorous to be done here where we properly
        # coerce things. But i do not want to do it
        case expr, ast.Subscript(ast.Name("Tuple"),
                ast.Tuple([ast.Subscript(ast.Name("Optional")), ast.Subscript(ast.Name("Optional"))], _)):
            l, r = expr.strip("()").split(", ")
            return f"({coerce_to_option(l)}, {coerce_to_option(r)})"
        case _:
            return expr

class Translator:

    stop = ["\n}"]

    def file_ext(self):
        return "rs"

    def __init__(self):
        global needs_hashmap
        self.type = None

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> Optional[str]:
        global needs_hashmap
        description = (
            "/// " + re.sub(DOCSTRING_LINESTART_RE, "\n/// ", description.strip()) + "\n"
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
        imports = "use std::collections::HashMap;\n\n" if needs_hashmap else ""
        return f"{imports}{description}fn {name}({arg_list}) -> {return_type} {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            # Uncomment the next line to produce valid rust that can be
            # typechecked!
            #"    panic!();",
            # Note that we include the closing brace because we choose it
            # as a stopword. Otherwise there are too many reasonable stopwords
            "}",
            "",
            "fn main() {",
            f"    let candidate = {entry_point};",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}\n"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        # This is a total hack. It only works for a very stupid reason:
        # Left is compiled before right, and in the test suite, candidate is
        # never on the rhs
        return f"    assert_eq!({left}, {right});"

    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        if type(c) == str:
            if '"' in c:
                raise Exception("smarter quote handling")
            return 'String::from("' + c + '")'
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
        return "vec![" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "HashMap::from([" + ", ".join(f"({k}, {v})" for k, v in zip(keys, values)) + "])"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        if func == "candidate":
            args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return func + "(" + ", ".join(args) + ")"

    def finalize(self, result, context) -> str:
        match context:
            case "lhs":
                return result
            case "rhs":
                return coerce(result, self.type[1])
            case _other:
                raise Exception("bad context to finalize")
