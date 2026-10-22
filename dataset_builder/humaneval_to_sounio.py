"""Type-directed MultiPL-E adapter for the pinned native Madaros toolchain.

Compound literals remain structured until their expected type is known.
Generated adapters use dynamic stable handles, not Rust-shaped prelude APIs.
"""

import ast
from dataclasses import dataclass
from typing import List, Optional

from sounio_types import EFFECTS, Type, equal, parse_type, runtime


@dataclass(frozen=True)
class Expression:
    kind: str
    value: object = None
    children: tuple = ()
    type: Optional[Type] = None


def translate_type(annotation):
    return parse_type(annotation).code


def _construct(type_, statements):
    return "{\n    let value = " + type_.prefix + "_new()\n" + "".join(
        "    " + statement + "\n" for statement in statements
    ) + "    value\n}"


def coerce(expression, annotation):
    """Render for the expected type recursively, without parsing emitted text."""
    type_ = annotation if isinstance(annotation, Type) else parse_type(annotation)
    if not isinstance(expression, Expression):
        raise ValueError("Untyped Sounio expression")
    if expression.kind == "code":
        if expression.type == type_:
            return expression.value
        if expression.type == Type("i64") and type_ == Type("f64"):
            return f"({expression.value} as f64)"
        raise ValueError(f"Cannot coerce {expression.type} to {type_}")
    if type_.kind == "option":
        if expression.kind == "literal" and expression.value is None:
            return type_.prefix + "_none()"
        return type_.prefix + "_some(" + coerce(expression, type_.args[0]) + ")"
    if expression.kind == "literal":
        value = expression.value
        if type_.kind == "bigint" and type(value) is int:
            if -(1 << 63) <= value < (1 << 63):
                return "mp_bigint_from_i64(" + coerce(expression, Type("i64")) + ")"
            digits = str(value).lstrip("-")
            groups = [digits[max(0, end - 9):end].lstrip("0") or "0"
                      for end in range(len(digits), 0, -9)]
            statements = ["mp_header_set(value.handle, 1, 1)",
                          "mp_seq_set(value.handle, 0, " + ("-1" if value < 0 else "1") + ")"]
            statements += [f"mp_seq_push(value.handle, {group})" for group in groups]
            return _construct(type_, statements)
        if type_.kind == "str" and isinstance(value, str):
            return _construct(type_, [
                f"mp_seq_push(value.handle, {ord(character)})" for character in value
            ])
        if type_.kind == "bool" and isinstance(value, bool):
            return "true" if value else "false"
        if type_.kind == "i64" and type(value) is int:
            if not -(1 << 63) <= value < (1 << 63):
                raise ValueError("Integer literal outside Sounio i64 range")
            if value == -(1 << 63):
                return "(0 - 9223372036854775807 - 1)"
            return str(value)
        if type_.kind == "f64" and type(value) in (int, float):
            # Decimal serialization belongs to the translation harness, not
            # an independent numerical reference or benchmark algorithm.
            return repr(float(value))
        raise ValueError(f"Literal {value!r} does not match {type_}")
    if type_.kind == "list" and expression.kind == "list":
        return _construct(type_, [
            f"{type_.prefix}_push(value, {coerce(child, type_.args[0])})"
            for child in expression.children
        ])
    if type_.kind == "set" and expression.kind == "set":
        return _construct(type_, [
            f"{type_.prefix}_add(value, {coerce(child, type_.args[0])})"
            for child in expression.children
        ])
    if type_.kind == "tuple" and expression.kind == "tuple":
        if len(expression.children) != len(type_.args):
            raise ValueError("Tuple literal has the wrong arity")
        return type_.prefix + "_new(" + ", ".join(
            coerce(child, expected) for child, expected in zip(expression.children, type_.args)
        ) + ")"
    if type_.kind == "dict" and expression.kind == "dict":
        return _construct(type_, [
            f"{type_.prefix}_set(value, {coerce(key, type_.args[0])}, {coerce(item, type_.args[1])})"
            for key, item in expression.children
        ])
    raise ValueError(f"Cannot render {expression.kind} as {type_}")


class Translator:
    stop = ["\n}"]

    def __init__(self):
        self.type = None
        self.entry_point = None

    def file_ext(self):
        return "sio"

    def translate_prompt(self, name: str, args: List[ast.arg], returns,
                         description: str) -> Optional[str]:
        self.entry_point = name
        try:
            argument_types = [parse_type(arg.annotation) for arg in args]
            return_type = parse_type(returns)
        except ValueError as error:
            print(error)
            self.type = None
            return None
        self.type = (argument_types, return_type)
        declaration = ", ".join(
            arg.arg + ": " + type_.code for arg, type_ in zip(args, argument_types)
        )
        comments = "\n".join("// " + line for line in description.strip().splitlines())
        helpers = runtime([*argument_types, return_type])
        return (
            helpers + "// Compound adapters use mp_<type>_new/get/push/set/len/eq.\n"
            "// Strings contain Unicode code points; concat and slice return new values.\n"
            "// Lists/dictionaries preserve shared mutable handles across growth.\n"
            "// All Python int annotations use immutable MPBigint, including nested types.\n"
            "// Arithmetic: mp_bigint_add/sub/mul/floordiv/mod/eq/lt; never native handle arithmetic.\n"
            "// Container indices and lengths use native i64; conversion to i64 is checked.\n"
            + comments + "\n"
            + f"fn {name}({declaration}) -> {return_type.code}{EFFECTS} {{\n"
        )

    def gen_literal(self, value):
        return Expression("literal", value)

    def gen_var(self, name):
        return name

    def gen_list(self, values):
        return Expression("list", children=tuple(values))

    def gen_tuple(self, values):
        return Expression("tuple", children=tuple(values))

    def gen_set(self, values):
        return Expression("set", children=tuple(values))

    def gen_dict(self, keys, values):
        if len(keys) != len(values):
            raise ValueError("Dictionary literal keys/values differ in length")
        return Expression("dict", children=tuple(zip(keys, values)))

    def gen_call(self, function, arguments):
        if function not in ("candidate", self.entry_point):
            raise ValueError(f"Unsupported translated call: {function}")
        expected, result = self.type
        if len(arguments) != len(expected):
            raise ValueError("Candidate call has the wrong arity")
        call = self.entry_point + "(" + ", ".join(
            coerce(value, type_) for value, type_ in zip(arguments, expected)
        ) + ")"
        return Expression("code", call, type=result)

    def finalize(self, expression, context):
        if context not in ("lhs", "rhs"):
            raise ValueError(f"Invalid Sounio expression context: {context}")
        return coerce(expression, self.type[1])

    def deep_equality(self, left, right):
        return "    assert(" + equal(self.type[1], left, right) + ")"

    def test_suite_prefix_lines(self, entry_point):
        return ["}", "", "fn main() -> i64" + EFFECTS + " {"]

    def test_suite_suffix_lines(self):
        return ["    0", "}", ""]

    def no_completion_prompt_stub(self):
        result = self.type[1]
        defaults = {"i64": "0", "f64": "0.0", "bool": "false"}
        default = defaults.get(result.kind, result.code + " { handle: 0 }")
        # Unreachable fallback keeps the return type explicit. A native false
        # assertion is independently tested to fail; this is not a solution.
        return "    // Unimplemented reference: must never count as a pass.\n    assert(false)\n    " + default + "\n"
