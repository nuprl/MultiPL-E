# This script translates problems from the OpenAI HumanEval dataset into Elm.
import re
import ast
from typing import List


class Translator:

    stop = ["\n\n", "\n--", "\ntype", "\nmodule"]

    def __init__(self):
        self.type = None

    def translate_identifier(self, name: str) -> str:
        parts = name.lower().split("_")
        return parts[0] + "".join(p.capitalize() for p in parts[1:])

    def file_ext(self):
        return "elm"

    def translate_type(self, t):
        match t:
            case ast.Subscript(ast.Name(id), slice, _ctx):
                match id:
                    case "List":
                        inner = self.translate_type(slice)
                        return f"List {inner}" if " " not in inner else f"List ({inner})"
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.translate_type(e) for e in elts]
                                return "(" + ", ".join(tys) + ")"
                            case _other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        match slice:
                            case ast.Tuple([k, v], _ctx):
                                kt = self.translate_type(k)
                                vt = self.translate_type(v)
                                return f"Dict.Dict {kt} {vt}"
                            case _other:
                                raise Exception(f"Bad dict: {slice}")
                    case "Optional":
                        inner = self.translate_type(slice)
                        return f"Maybe {inner}" if " " not in inner else f"Maybe ({inner})"
                    case "Union":
                        raise Exception("Union is not supported")
                    case other:
                        raise Exception(f"Bad generic {other}")
            case ast.Name("int") | "int":
                return "Int"
            case ast.Name("float") | "float":
                return "Float"
            case ast.Name("bool"):
                return "Bool"
            case ast.Name("str") | "str":
                return "String"
            case None:
                raise Exception("implicitly untyped argument")
            case ast.Name("Any"):
                raise Exception("Any is not supported")
            case ast.Name(x):
                raise Exception(f"unknown name {x}")
            case ast.Constant(Ellipsis):
                raise Exception("no ellipsis")
            case _other:
                raise Exception(f"unknown annotation: {t}")

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str):
        self.type = [[arg.annotation for arg in args], returns]
        elm_name = self.translate_identifier(name)
        comment = "-- " + re.sub(r"\n(\s*)", "\n-- ", description.strip()) + "\n"
        try:
            arg_types = [self.translate_type(arg.annotation) for arg in args]
            ret_type = self.translate_type(returns)
        except Exception as e:
            print(e)
            return None
        type_parts = arg_types + [ret_type]
        type_sig = elm_name + " : " + " -> ".join(type_parts)
        arg_names = [arg.arg for arg in args]
        func_decl = elm_name + " " + " ".join(arg_names) + " ="
        imports = "import Platform\n"
        all_types = " ".join(type_parts)
        if "Dict.Dict" in all_types:
            imports += "import Dict\n"
        return f"module Main exposing (..)\n\n{imports}\n{comment}{type_sig}\n{func_decl}\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            "",
            "assert : Bool -> ()",
            "assert b = if b then () else Debug.todo \"assertion failed\"",
            "",
            "main : Program () () ()",
            "main =",
            "    Platform.worker",
            "        { init = \\_ ->",
            f"            let",
            f"                candidate = {self.translate_identifier(entry_point)}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "            in",
            "            ((), Cmd.none)",
            "        , update = \\_ _ -> ((), Cmd.none)",
            "        , subscriptions = \\_ -> Sub.none",
            "        }",
        ]

    def deep_equality(self, left: str, right: str) -> str:
        return f"                _ = assert ({left} == {right})"

    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool:
            return str(c)
        if type(c) == str:
            escaped = c.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")
            return f'"{escaped}"'
        if c is None:
            return "Nothing"
        if type(c) == int:
            if c < 0:
                return f"({repr(c)})"
            return repr(c)
        if type(c) == float:
            return repr(c)
        return repr(c)

    def gen_var(self, v: str):
        return self.translate_identifier(v)

    def gen_list(self, l: List[str]):
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]):
        return "(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]):
        pairs = ", ".join(f"({k}, {v})" for k, v in zip(keys, values))
        return f"Dict.fromList [{pairs}]"

    def gen_call(self, func: str, args: List[str]):
        if func == "candidate":
            args = [self._coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return "(" + func + " " + " ".join(args) + ")"

    def _coerce(self, expr: str, ann) -> str:
        match expr, ann:
            case expr, ast.Subscript(ast.Name("Optional"), _):
                if expr == "Nothing":
                    return expr
                return f"(Just {expr})"
            case expr, ast.Name("float") | "float" if "." not in expr and expr not in ("Nothing",):
                return f"(toFloat {expr})"
            case _:
                return expr

    def finalize(self, result, context) -> str:
        match context:
            case "lhs":
                return result
            case "rhs":
                return self._coerce(result, self.type[1])
            case _other:
                raise Exception("bad context to finalize")
