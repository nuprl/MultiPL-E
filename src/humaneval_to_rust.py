# Authored by Arjun Guha and Abhinav Jangda
# Copyright (c) 2022, Roblox Inc, Northeastern University, and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Rust.
import re
import ast
from typing import List, Optional
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class RustTranslator:

    USub = "-"

    stop = ["\nfn", "pub", "\n/// ", "#[test]"]

    def __init__(self, file_ext):
        self.file_ext = file_ext
        # oh my gosh python how to even capture a variable
        self.needs_hashmap = False

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> Optional[str]:
        description = (
            "/// " + re.sub(DOCSTRING_LINESTART_RE, "\n/// ", description.strip()) + "\n"
        )
        def translate_type(t):
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
                                    self.needs_hashmap = True
                                    return f"HashMap<{key}, {value}>"
                                case other:
                                    raise Exception(f"Bad dict: {slice}")
                        case "Optional":
                            return "Option<" + translate_type(slice) + ">"
                        case other:
                            raise Exception(f"Bad generic {other}")
                    return "hmmm"
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
        def translate_arg(arg):
            return arg.arg + ": " + translate_type(arg.annotation)
        arg_strings = []
        return_type = ""
        try:
            arg_strings = [translate_arg(arg) for arg in args]
            return_type = translate_type(returns)
        except Exception as e:
            #print(e)
            return None
        arg_list = ", ".join(arg_strings)
        imports = "use std::collections::HashMap;\n\n" if self.needs_hashmap else ""
        return f"{imports}{description}fn {name}({arg_list}) -> {return_type} {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
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
        return "    assert_eq!({}, {});".format(left, right)

    # NOTE(arjun): Really, no Nones?
    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        if type(c) == str:
            if '"' in c:
                raise Exception("smarter quote handling")
            return '"' + c + '".into()'
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
        return "[" + ", ".join(f"({k}, {v})" for k, v in zip(keys, values)) + "].into()"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"


if __name__ == "__main__":
    translator = RustTranslator("rs")
    main(translator)
