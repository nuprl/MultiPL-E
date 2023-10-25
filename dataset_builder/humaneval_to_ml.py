import re
import ast
from typing import List

DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

def translate_type(t):
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    return f"{translate_type(slice)} list"
                case "Union":
                    raise Exception("OCaml does not have untagged unions.")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            return " " + " * ".join(tys)
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            needs_hashmap = True
                            return f"({key}, {value}) list"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return translate_type(slice) + " option"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "int"
        case ast.Name("float"):
            return "float"
        case ast.Name("bool"):
            return "bool"
        case ast.Name("str") | "str":
            return "string"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            raise Exception("OCaml does not have Any type")
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
        case expr, ast.Name("float") | "float" if not "." in expr:
            return f"{expr}.0"
        # This is a special case for a few benchmarks which are float list but
        # contain integer literals. 
        case expr, ast.Subscript(ast.Name("List"), ast.Name("float") | "float"):
            # the brackets trim [ and ]
            parts = expr[1:-1].split("; ")
            inner = "; ".join([coerce(part, "float") for part in parts])
            return f"[{inner}]"
        case _:
            return expr

class Translator:

    stop = ["\n\n", "\n(*", "\ntype", "\nlet"]

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str):
        description = ( 
            "(**" + re.sub(DOCSTRING_LINESTART_RE, "\n * ", description.strip()) + "\n*)\n"
        )
        self.type = [[arg.annotation for arg in args], returns]
        def translate_arg(arg):
            return f"({arg.arg} : {translate_type(arg.annotation)})"
        arg_strings = []
        return_type = ""
        try:
            arg_strings = [translate_arg(arg) for arg in args]
            return_type = translate_type(returns)
        except Exception as e:
            print(e)
            return None
        arg_list = " ".join(arg_strings)
        return f"{description}let {name} {arg_list} : {return_type} ="

    def file_ext(self):
        return "ml"

    def __init__(self):
        self.type = None

    def deep_equality(self, left, right):
        return f"  (assert (({left}) = {right}));"

    def test_suite_prefix_lines(self, entry_point):
        return ["", "let assertions =", f" let candidate = {entry_point} in"]
    def test_suite_suffix_lines(self):
        return ["  ()", "", ]
    def gen_literal(self, c: bool | str| int | float):
        if type(c) == bool: 
            return str(c).lower()
        if type(c) == str:
            return f'"{c}"'
        if type(c) == int:
            if c < 0:
                return f"(~{c*(-1)})"
            else:
                return repr(c)
        if type(c) == float:
            return repr(c)
    def gen_var(self, name: str):
        return name
    def gen_list(self, elements: List[str]):
        return f"[{'; '.join(elements)}]"
    def gen_tuple(self, elements: List[str]):
        return f"({', '.join(elements)})"
    def gen_dict(self, keys, values):
        return f"[{'; '.join([f'({k}, {v})' for k, v in zip(keys, values)])}]"
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
