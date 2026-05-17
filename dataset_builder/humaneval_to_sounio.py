# This script translates problems from the OpenAI HumanEval dataset into Sounio.
#
# Sounio (https://github.com/Sounio-lang/Sounio) is an epistemic systems
# language. The translator targets Sounio 1.0.0-beta.5 and produces files with
# the `.sio` extension.
#
# Sounio specifics worth knowing while reading this file:
#   * No unary minus -- `-x` is written `(0 - x)` and we encode negative
#     integer/float literals with that wrapping.
#   * No semicolons; statements are newline terminated.
#   * Effects must be declared on every function; HumanEval problems typically
#     touch arrays / arithmetic / division so we use `with Mut, Panic, Div`
#     for the user function and add `IO` on `main` for the test harness.
#   * Mutable bindings use `var`, immutable bindings use `let`; mutable
#     references use `&!`.
#   * Sounio uses Rust-shaped generics in the type-system, so `Vec<T>`,
#     `Option<T>`, `HashMap<K, V>` and tuples translate over cleanly at the
#     prompt level.  Whether the generated code compiles depends on the model.
#   * Sounio supports first-class function references (Sprint 228), so the
#     `let candidate = {entry_point}` aliasing used by the Rust translator
#     translates verbatim.
#
# As with the Rust translator, we walk the Python type annotations and refuse
# explicitly-untyped or Union-typed prompts.

import ast
import re
from typing import List, Optional

DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

# Whether the current translation needs `use std::collections::HashMap` style
# imports.  Sounio's stdlib exposes `HashMap` from `std::collections` via the
# `use` keyword, mirroring Rust.  This is a module-level flag for parity with
# humaneval_to_rs.py and is reset on every translate_prompt call.
needs_hashmap = False


def translate_type(t) -> str:
    """Translate a Python type annotation AST node to a Sounio type."""
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, _ctx):
            match id:
                case "List":
                    return "Vec<" + translate_type(slice) + ">"
                case "Union":
                    raise Exception("Union unsupported")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx2):
                            tys = [translate_type(e) for e in elts]
                            return "(" + ", ".join(tys) + ")"
                        case _:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx2):
                            key, value = translate_type(k), translate_type(v)
                            needs_hashmap = True
                            return f"HashMap<{key}, {value}>"
                        case _:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return "Option<" + translate_type(slice) + ">"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "i64"
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
        case _:
            raise Exception(f"unknown annotation: {t}")


def coerce(expr: str, type) -> str:
    """Coerce a Python-shaped literal expression to fit a Sounio type.

    Mirrors the Rust translator's approach: most expressions pass through
    unchanged, but `Option`-typed arguments need `Some(_)` wrapping, empty
    `vec![]` literals need explicit element-type annotation, and integer
    literals appearing where a `f64` is expected pick up a `.0` suffix.
    """
    def coerce_to_option(e: str) -> str:
        if e == "None":
            return e
        return f"Some({e})"

    match expr, type:
        case e, ast.Subscript(ast.Name("Optional"), _):
            return coerce_to_option(e)
        case "vec![]", ast.Subscript(ast.Name("List"), to):
            return f"Vec::<{translate_type(to)}>::new()"
        case "vec![]", ast.Name("str") | "str":
            return f"String::new()"
        case "HashMap::from([])", ast.Subscript(ast.Name("Dict"), ast.Tuple([k, v])):
            return f"HashMap::<{translate_type(k)}, {translate_type(v)}>::new()"
        case e, ast.Name("float") | "float" if "." not in e:
            return f"{e}.0"
        case e, ast.Subscript(ast.Name("List"), ast.Name("float") | "float"):
            # vec![1, 2, 3] with float element type -> vec![1.0, 2.0, 3.0]
            parts = e[5:-1].split(", ")
            inner = ", ".join(coerce(p, "float") for p in parts)
            return f"vec![{inner}]"
        case e, ast.Subscript(
            ast.Name("Tuple"),
            ast.Tuple(
                [
                    ast.Subscript(ast.Name("Optional")),
                    ast.Subscript(ast.Name("Optional")),
                ],
                _,
            ),
        ):
            l, r = e.strip("()").split(", ")
            return f"({coerce_to_option(l)}, {coerce_to_option(r)})"
        case _:
            return expr


class Translator:
    """MultiPL-E translator: Python HumanEval -> Sounio."""

    stop = ["\n}"]

    def file_ext(self) -> str:
        return "sio"

    def __init__(self):
        self.type = None  # ([arg_types], return_type) — used for test coercions

    def translate_prompt(
        self,
        name: str,
        args: List[ast.arg],
        returns,
        description: str,
    ) -> Optional[str]:
        global needs_hashmap
        description = (
            "// " + re.sub(DOCSTRING_LINESTART_RE, "\n// ", description.strip()) + "\n"
        )
        needs_hashmap = False
        self.type = [[arg.annotation for arg in args], returns]

        def translate_arg(arg: ast.arg) -> str:
            return arg.arg + ": " + translate_type(arg.annotation)

        try:
            arg_strings = [translate_arg(a) for a in args]
            return_type = translate_type(returns)
        except Exception as e:
            print(e)
            return None

        arg_list = ", ".join(arg_strings)
        imports = "use std::collections::HashMap\n\n" if needs_hashmap else ""
        # `with Mut, Panic, Div` covers the effects HumanEval functions
        # typically need.  The Sounio type-checker can tighten these later.
        return (
            f"{imports}{description}"
            f"fn {name}({arg_list}) -> {return_type} with Mut, Panic, Div {{\n"
        )

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        # We close the function body opened by translate_prompt with `}` (which
        # is also our stop token), then open a `main` test harness that
        # aliases the entry point via Sounio's first-class fn refs.
        return [
            "}",
            "",
            "fn main() -> i64 with IO, Mut, Panic, Div {",
            f"    let candidate = {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["    0", "}", ""]

    def deep_equality(self, left: str, right: str) -> str:
        # Sounio's `assert(...)` is the canonical assertion macro and aborts
        # the process on failure, which the eval harness reads as a non-zero
        # exit code -> "Exception" verdict.
        return f"    assert({left} == {right})"

    # ------------------------------------------------------------------ AST → str

    def gen_literal(self, c) -> str:
        if isinstance(c, bool):
            return "true" if c else "false"
        if isinstance(c, str):
            if '"' in c:
                # Punt on inner quotes for now -- the Python source rarely
                # produces these in HumanEval bodies and a smarter quoter is
                # follow-up work.
                raise Exception("smarter quote handling")
            return f'String::from("{c}")'
        if c is None:
            return "None"
        if isinstance(c, int):
            if c < 0:
                return f"(0 - {abs(c)})"
            return str(c)
        if isinstance(c, float):
            if c < 0:
                return f"(0.0 - {abs(c)})"
            # Force a decimal point so the literal stays f64-typed.
            return repr(c) if "." in repr(c) else f"{c}.0"
        return repr(c)

    def gen_unaryop(self, op: str, v: str) -> str:
        if op == "-":
            return f"(0 - {v})"
        return f"{op}{v}"

    def gen_var(self, v: str) -> str:
        return v

    def gen_list(self, l: List[str]) -> str:
        return "vec![" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        return "(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        return (
            "HashMap::from(["
            + ", ".join(f"({k}, {v})" for k, v in zip(keys, values))
            + "])"
        )

    def gen_set(self, s: List[str]) -> str:
        # Sounio's stdlib uses `HashSet` (Rust-shaped).  Empty sets are rare
        # in HumanEval so we don't special-case them here.
        return "HashSet::from([" + ", ".join(s) + "])"

    def gen_call(self, func: str, args: List[str]) -> str:
        if func == "candidate":
            args = [coerce(a, self.type[0][i]) for i, a in enumerate(args)]
        return func + "(" + ", ".join(args) + ")"

    def finalize(self, result, context) -> str:
        match context:
            case "lhs":
                return result
            case "rhs":
                return coerce(result, self.type[1])
            case _:
                raise Exception("bad context to finalize")

    def no_completion_prompt_stub(self) -> str:
        # A safe Sounio stub: panic immediately.  The `panic!` macro is part
        # of the Sounio stdlib and the trailing `}` matches our stop token.
        return "    panic!(\"todo\")\n}\n"
