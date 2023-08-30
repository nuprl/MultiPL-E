# This script translates problems from the OpenAI HumanEval dataset into Lua.
import re
import ast
from typing import List
from dataset_builder.base_language_translator import LanguageTranslator

TargetExp = str

DEEP_EQ = """
local function _half_equals(t1, t2)
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

function _tblequals(t1, t2)
	return _half_equals(t1, t2) and _half_equals(t2, t1)
end

function _deepeq(a, b)
  if type(a) == "table" and type(b) == "table" then
    return _tblequals(a, b)
  end
  return a == b
end
"""


def translate_type(t):
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    return "{" + translate_type(slice) + "}"
                case "Union":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            return "| ".join(tys)
                        case other:
                            raise Exception(f"Unexpected slice: {slice}")
                case "Tuple":
                    match slice:
                        case ast.Tuple(elts, _ctx):
                            tys = [translate_type(elem) for elem in elts]
                            return "[" + ", ".join(tys) + "]"
                        case other:
                            raise Exception(f"Bad tuple: {slice}")
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            needs_hashmap = True
                            return "{"+f"[key: {key}]: {value}" + "}"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    return translate_type(slice) + " | undefined"
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
        case ast.Constant(Ellipsis):
            return "...any"
        case _other:
            raise Exception(f"unknown annotation: {t}")


class Translator(LanguageTranslator[TargetExp]):

    def stop(self):
        return ["\nlocal", "\nfunction", "\n--", "\n\n"]

    def file_ext(self) -> str:
        return "lua"

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

        arg_list = ", ".join(arg_strings)

        return f"{lua_description}local function {name}({arg_list}){return_type}\n"

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            DEEP_EQ,
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
        return "    assert(_deepeq(" + left + ", " + right + "))"

    def gen_literal(self, c: bool | str | int | float | None) -> TargetExp:
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
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
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "{" + ", ".join(t) + "}"

    def gen_dict(self, keys: List[TargetExp], values: List[TargetExp]) -> TargetExp:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
        """
        return "{" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "}"

    def gen_call(self, func: TargetExp, args: List[TargetExp]) -> TargetExp:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func + "(" + ", ".join(args) + ")"
