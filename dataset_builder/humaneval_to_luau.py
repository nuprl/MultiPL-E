# This script implements the translator for the Luau language used in Roblox.
import ast
from types import NoneType
from typing import List
from base_language_translator import LanguageTranslator

TargetExp = str

DEEP_EQ = """
local function _half_equals(t1: any, t2: any): boolean
  if type(t1) ~= "table" then
      return false
  end
  for k, v in pairs(t1) do
    if t2[k] == nil then
      return false
    elseif type(v) == "table" then
      if (v ~= t1) and (not _half_equals(t2[k], v)) then
        return false
      end
    elseif not (t2[k] == v) then
      return false
    end
  end
  return true
end

function _tblequals(t1: any, t2: any): boolean
  return _half_equals(t1, t2) and _half_equals(t2, t1)
end

function _deepeq(a: any, b: any): boolean
  if type(a) == "table" and type(b) == "table" then
    return _tblequals(a, b)
  end
  return a == b
end
"""

# goes from 1 to 9. does a tuple really need more than 9 elements?
ORDINALS = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
]


def translate_type(t):
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    return "{" + translate_type(slice) + "}"
                case "Union":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            # dedup here because `float` and `int` both become `number`
                            # can't use set because i'd like to preserve order
                            deduped = []
                            for ty in tys:
                                if ty not in deduped:
                                    deduped.append(ty)

                            return " | ".join(deduped)
                        case other:
                            raise Exception(f"Unexpected slice: {slice}")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [ORDINALS[i] + ": " + translate_type(elem)
                                   for i, elem in enumerate(elts)]
                            return "{" + ", ".join(tys) + "}"
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            return "{"+f"[{key}]: {value}" + "}"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return translate_type(slice) + "?"
                case "Literal":
                    match slice:
                        case ast.Constant(c):
                            return translate_type(slice)
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            return "(" + " | ".join(tys) + ")"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "number"
        case ast.Name("float"):
            return "number"
        case ast.Name("bool"):
            return "boolean"
        case ast.Name("str") | "str":
            return "string"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            return "any"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(c):
            if c == Ellipsis:
                # TODO: this is possible, requires some extra hard thinking
                raise Exception("ellipsis")
            elif c == None:
                return "nil"
            elif c == True or c == False:
                return c.lower()
            elif type(c) == str:
                return f'"{c}"'
            else:
                raise Exception("unknown constant: " + str(c))
        case _other:
            raise Exception(f"unknown annotation: {t}")


class Translator(LanguageTranslator[TargetExp]):

    def stop(self):
        return ["\nlocal", "\nfunction", "\n--", "\n\n"]

    def file_ext(self) -> str:
        return "luau"

    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        lua_description = (
            "-- " + description.replace("\n", "\n-- ") +
            "\n" if description else ""
        )
        self.type = [[arg.annotation for arg in args], returns]

        def translate_arg(arg):
            ty = ""
            try:
                ty = ": " + translate_type(arg.annotation)
            except Exception as e:
                print(e)
            return arg.arg + ty
        arg_strings = [translate_arg(arg) for arg in args]
        return_type = ""
        try:
            return_type = ": " + translate_type(returns)
        except Exception as e:
            print(e)

        self.ret_type = return_type

        arg_list = ", ".join(arg_strings)

        return f"{lua_description}local function {name}({arg_list}){return_type}\n"

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        # _check_ret_type hack
        check_ret_type = f"""
local function _check_ret_type(ret {self.ret_type}) {self.ret_type}
    return ret
end
"""
        return [
            DEEP_EQ,
            check_ret_type,
            "",
            "function test_humaneval()",
            f"local candidate = {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["end", "", "test_humaneval()"]

    def deep_equality(self, left: TargetExp, right: TargetExp) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return f"    assert(_deepeq({left}, _check_ret_type({right})))"

    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()  # True -> true
        elif type(c) == NoneType:
            return "nil"
        return repr(c)

    def gen_var(self, v: str) -> TargetExp:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[TargetExp]) -> TargetExp:
        """Translate a list with elements l
        A list [ x, y, z] translates to { x, y, z }
        """
        return "{" + ", ".join(l) + "}"

    def gen_tuple(self, t: List[TargetExp]) -> TargetExp:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { first = x, second = y, third = z }
        """
        return "{" + ", ".join(f"{ORDINALS[i]} = {elem}" for i, elem in enumerate(t)) + "}"

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "{" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        assert func not in ["open", "list", "dict", "tuple", "set",
                            "range"], "Unsupported function call translation: " + func
        return func + "(" + ", ".join(args) + ")"
