# This script translates problems from the OpenAI HumanEval dataset into Zig.
import re
import ast
from typing import List


class Translator:

    stop = ["\n}"]

    def __init__(self):
        self.type = None
        self.ret_type = None

    def file_ext(self):
        return "zig"

    def translate_type(self, t):
        match t:
            case ast.Subscript(ast.Name(id), slice, ctx):
                match id:
                    case "List":
                        inner = self.translate_type(slice)
                        return f"[]const {inner}"
                    case "Union":
                        raise Exception("Union is not supported")
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.translate_type(elem) for elem in elts]
                                return "struct { " + ", ".join(tys) + " }"
                            case other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        raise Exception("Dict is not supported")
                    case "Optional":
                        inner = self.translate_type(slice)
                        return f"?{inner}"
                    case other:
                        raise Exception(f"Bad generic {other}")
            case ast.Name("int") | "int":
                return "i64"
            case ast.Name("float"):
                return "f64"
            case ast.Name("bool"):
                return "bool"
            case ast.Name("str") | "str":
                return "[]const u8"
            case None:
                raise Exception("implicitly untyped argument")
            case ast.Name("Any"):
                raise Exception("Any is not supported")
            case ast.Name(x):
                raise Exception(f"unknown name {x}")
            case ast.Constant(Ellipsis):
                raise Exception("no ellipsis!!")
            case _other:
                raise Exception(f"unknown annotation: {t}")

    def infer_elem_type(self, elements):
        if not elements:
            return "i64"
        first = elements[0]
        if first.startswith('"'):
            return "[]const u8"
        if first in ("true", "false"):
            return "bool"
        if first == "null":
            return "i64"
        if first.startswith("&[_]"):
            inner = first[4:]
            brace = inner.index("{")
            return "[]const " + inner[:brace]
        if first.startswith(".{"):
            return None
        for elem in elements:
            if "." in elem and elem.replace(".", "").replace("-", "").replace("e", "").replace("+", "").isdigit():
                return "f64"
        return "i64"

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str):
        self.type = [[arg.annotation for arg in args], returns]
        zig_description = (
            "// " + re.sub(r"\n(\s*)", "\n// ", description.strip()) + "\n"
        )
        try:
            arg_strings = []
            for arg in args:
                zig_type = self.translate_type(arg.annotation)
                arg_strings.append(f"{arg.arg}: {zig_type}")
            self.ret_type = self.translate_type(returns)
        except Exception as e:
            print(e)
            return None
        arg_list = ", ".join(arg_strings)
        preamble = "const std = @import(\"std\");\nconst allocator = std.heap.page_allocator;\n\n"
        return f"{preamble}{zig_description}fn {name}({arg_list}) {self.ret_type} {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            "}",
            "",
            "pub fn main() !void {",
            f"    const candidate = {entry_point};",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}\n"]

    def deep_equality(self, left: str, right: str) -> str:
        right = self._resolve_empty_list(right, self.type[1] if self.type else None)
        left = self._resolve_empty_list(left, self.type[1] if self.type else None)
        if self.ret_type and self.ret_type.startswith("[]const "):
            elem_type = self.ret_type[len("[]const "):]
            return f"    try std.testing.expectEqualSlices({elem_type}, {right}, {left});"
        return f"    try std.testing.expectEqualDeep({right}, {left});"

    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool:
            return "true" if c else "false"
        if type(c) == str:
            escaped = c.replace("\\", "\\\\").replace('"', '\\"').replace("\n", "\\n")
            return f'"{escaped}"'
        if c is None:
            return "null"
        return repr(c)

    def gen_var(self, v: str):
        if v == "error":
            return "@\"error\""
        if v == "type":
            return "@\"type\""
        return v

    def gen_list(self, l: List[str]):
        if len(l) == 0:
            return "EMPTY_LIST"
        elem_type = self.infer_elem_type(l)
        if elem_type is None:
            return "&.{ " + ", ".join(l) + " }"
        return "&[_]" + elem_type + "{ " + ", ".join(l) + " }"

    def gen_tuple(self, t: List[str]):
        return ".{ " + ", ".join(t) + " }"

    def gen_dict(self, keys: List[str], values: List[str]):
        raise Exception("Dict is not supported")

    def _resolve_empty_list(self, expr: str, target_type):
        if "EMPTY_LIST" not in expr:
            return expr
        if target_type is not None:
            try:
                zig_type = self.translate_type(target_type)
                if zig_type.startswith("[]const "):
                    elem_type = zig_type[len("[]const "):]
                    return expr.replace("EMPTY_LIST", f"&[_]{elem_type}{{}}")
            except Exception:
                pass
        return expr.replace("EMPTY_LIST", "&[_]i64{}")

    def gen_call(self, func: str, args: List[str]):
        if func == "candidate":
            args = [self._resolve_empty_list(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return func + "(" + ", ".join(args) + ")"
