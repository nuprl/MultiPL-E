# The dmd executable is downloaded from the D language official website:
# https://dlang.org/download.html
#
# This script translates problems from the OpenAI HumanEval dataset into Dlang.
import re
import ast
from typing import List

RET_TYPE_LOC = -1
NULL_DICT = "___null_dict___"

class Translator:
    # TODO: what is the stop sequence for it?
    stop = ["\n\n", "\nvoid", "\nbool", "\nint"]

    def file_ext(self):
        return "d"

    def __init__(self):
        self.require_libs = {"std.math"}
        self.func_type = None

    def translate_type(self,t):
        match t:
            case ast.Subscript(ast.Name(id), slice, _ctx):
                match id:
                    case "List":
                        slice_type = self.translate_type(slice)
                        return f"{slice_type}[]"
                    case "Union":
                        raise Exception("Union is not supported")
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts,_ctx):
                                tys = [self.translate_type(elem) for elem in elts]
                                self.require_libs.add("std.typecons")
                                return "Tuple!({})".format(", ".join(tys))
                            case _other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        match slice:
                            case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                                key, value = self.translate_type(k), self.translate_type(v)
                                # Dlang associative arrays doesn't allow empty arrays, so we are wrapping it with Nullable.
                                return f"Nullable!({value}[{key}])"
                    case "Optional":
                        self.require_libs.add("std.typecons")
                        return "Nullable!({})".format(self.translate_type(slice))
                    case other:
                        raise Exception("Unsupported type")
            case ast.Name("int") | "int":
                return "long"
            case ast.Name("float"):
                return "float"
            case ast.Name("bool"):
                return "bool"
            case ast.Name("str") | "str":
                return "string"
            case _other:
                raise Exception("Unsupported type")
    
    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        dlang_desc = ("/*\n" + description + "\n*/\n")
        
        try:
            self.func_type = [(self.translate_type(arg.annotation), arg.arg) for arg in args]
            arg_names_and_types = [arg[0] + " " +arg[1] for arg in self.func_type]
            arg_list = ", ".join(arg_names_and_types)
            return_type = self.translate_type(returns)
            self.func_type.append((return_type, ""))
            libraries = "\n".join([f"import {lib};" for lib in sorted(self.require_libs)])

            return f"{libraries}\n{dlang_desc}{return_type} {name}({arg_list}) \n"
        except Exception as err:
            print(err)
            return None

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "unittest",
            "{",
            f"    alias candidate = {entry_point};",
            ""
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return [
            "}",
            "void main(){}"
        ]

    def is_null_stub(self, var, value):
        if value == "None" or value == "___null_dict___":
            return f"assert({var}.isNull);"
        else:
            value = value.replace(".nullable","")
            return f"assert(!{var}.isNull && {var}.get == {value});"

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        # :(
        for argi in range(len(self.func_type) - 1):
            ty = self.func_type[argi][0]

            if re.fullmatch(r"Nullable!\(.+\[.+\]\)", ty) != None:
                left = left.replace(NULL_DICT, ty + ".init", 1)


        ret_type = self.func_type[RET_TYPE_LOC][0] 
        # A check of the test cases tell me that all of the Optional (-> Nullables) are in return position.
        if ret_type.startswith("Null"):
            return "{{\n        auto result = {};\n        {}\n}}\n".format(left, self.is_null_stub("result", right))
        # Special case for 136. Not general, but works as a hot fix.
        elif ret_type == "Tuple!(Nullable!(long), Nullable!(long))":
            matched_parts = re.match(r"tuple\((.*),(.*)\)", right)
            tl, tr = self.is_null_stub("result[0]", matched_parts[1].strip()), self.is_null_stub("result[1]", matched_parts[2].strip())
            return "{{\n        auto result = {};\n        {}\n        {}\n}}\n".format( \
                        left, tl, tr)        

        return "    assert({} == {});".format(left, right)


    def gen_literal(self, c: bool | str | int | float):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        elif type(c) == str:
            c = c.replace('"', '\\"')
            return f'"{c}"'
        elif type(c) == int:
            return repr(c) + "L"
        return repr(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        [a, b, c] => [a, b, c]
        """
        return "[" + ", ".join(l) + "]"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        (a, b, c) => tuple(a, b, c)
        """
        return "tuple(" + ", ".join(t) + ")"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        { "key1": val1, "key2": val2 } => [ "key1": val1, "key2": val2 ]
        """
        if keys:
            return "[" + ", ".join(f"{k}: {v}" for k, v in zip(keys, values)) + "].nullable"
        else:
            # an empty dictionary. How to generate this actually depends on the typed context...
            return NULL_DICT

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        f(x, y, z) => f(x, y, z)
        """

        return func + "(" + ", ".join(args) + ")"

    def no_completion_prompt_stub(self) -> str:
        """
        A default stub to create a syntactically valid translation in case of not performing completion.
        For example, for Rust this could be:

            todo!()
        }
        
        """
        return """
{
    throw new Exception("unimplemented!");
}
        """
