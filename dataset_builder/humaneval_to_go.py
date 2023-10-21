# This script translates problems from the OpenAI HumanEval dataset into Go.
#
# ----- Some specific issues about Go -----
#
# Due to Go's composite literals, we have to type annotate each literal with its type.
# For example, if we want a slice of ints, we have to write:
# []int{1, 2, 3}
# Or a map of string -> int:
# map[string]int{"a": 1, "b": 2}
# Therefore, this creates some slight issues with the translation, but it is
# possible to translate the code by using python's ast annotations, which is what we have done here.
#
# Unfortunately, Go does not have Union or Optional types, so we reject those. However,
# go does not have Tuples either, but we do not reject those, instead we translate them to interface slices.
# For testing, Go does not have a real testing framework, therefore we ship a small testing program
# with each problem. For equality, we have exploited Go's value formatting (the "%v" format), which
# will create the same string if two values are equal. Additionally, all go test filenames have to
# end in "_test.go", otherwise go will reject them.

import re
import ast
from typing import List, Optional
from pydoc import locate


# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

GO_LIST_RE = re.compile(r"^\[\].*{.*\}$")


def translate_type(t):
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    return "[]%s" % translate_type(slice)
                case "Union":
                    raise Exception("Union unsupported")
                case "Tuple":
                    return "[]interface{}"
                case "Dict":
                    match slice:
                        case ast.Tuple([ast.Name(k), ast.Name(v)], _ctx):
                            key, value = translate_type(k), translate_type(v)
                            return f"map[{key}]{value}"
                        case other:
                            raise Exception(f"Bad dict: {slice}")
                case "Optional":
                    raise Exception("Optional unsupported")
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "int"
        case ast.Name("float"):
            return "float64"
        case ast.Name("bool"):
            return "bool"
        case ast.Name("str") | "str":
            return "string"
        case None:
            raise Exception("implicitly untyped argument")
        case ast.Name("Any"):
            return "interface{}"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            raise Exception("no ellipsis!!")
        case _other:
            raise Exception(f"unknown annotation: {t}")


class Translator:

    stop = ["\nfunc", "struct", "\n// "]

    def file_ext(self):
        # NOTE: go test need to end with _test.go
        return "go_test.go"

    def __init__(self):
        self.type = []

    def convert_identifier(self, ident):
        match ident:
            case "string":
                return "myString"
            case "int":
                return "myInt"
            case "float":
                return "myFloat"
            case "bool":
                return "myBool"
            case _other:
                return ident

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> Optional[str]:
        self.type = [[arg.annotation for arg in args], returns]

        description = (
            "// " + re.sub(DOCSTRING_LINESTART_RE, "\n// ",
                           description.strip()) + "\n"
        )
        # Store this for later coercions on tests
        self.type = [[arg.annotation for arg in args], returns]

        def translate_arg(arg):
            arg_type = translate_type(arg.annotation)
            return self.convert_identifier(arg.arg) + " " + arg_type
        arg_strings = []
        retType = ""
        try:
            arg_strings = [translate_arg(arg) for arg in args]
            retType = translate_type(returns)
        except Exception as e:
            print(e)
            return None
        arg_list = ", ".join(arg_strings)
        toplevel = f"""package {name}_test

import (
    "testing"
    "fmt"
)

"""
        return f"{toplevel}{description}func {name}({arg_list}) {retType} {{\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            f"func Test{entry_point.title()}" + "(t *testing.T) {",
            f"  candidate := {entry_point}",
            "	type test struct {",
            "		actual   interface{}",
            "		expected interface{}",
            "	}",
            "   tests := []test{",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        """
        This code goes at the end of the test suite.
        """
        return [
            "   }\n",
            "	for i, tc := range tests {",
            "		t.Run(fmt.Sprintf(\"test num % d\", i), func(t *testing.T) {",
            "			if fmt.Sprintf(\"%v\", tc.actual) != fmt.Sprintf(\"%v\", tc.expected) {",
            "				t.Errorf(\"expected '%s', got '%s'\", tc.expected, tc.actual)",
            "			}",
            "		})",
            "	}",
            "}\n"
        ]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "     { actual: %s, expected: %s }," % (left, right)

    def pytype_to_gotype(self, pytype: str):
        # These are type checkers for the types that are in the dataset
        def get_type(v: str):
            try:
                return type(eval(v))
            except:
                return None

        def type_check_int(v: str) -> bool:
            return get_type(v) == int

        def type_check_str(v: str) -> bool:
            return get_type(v) == str

        def type_check_float(v: str) -> bool:
            return get_type(v) == float

        def type_check_bool(v: str) -> bool:
            return get_type(v) == bool

        def type_check_list(v: str) -> bool:
            return GO_LIST_RE.match(v) is not None

        # Ugh: match does not work with types
        # Only matching types that appear in the dataset
        if type_check_int(pytype):
            return "int"
        elif type_check_bool(pytype):
            return "bool"
        elif type_check_str(pytype):
            return "string"
        elif type_check_float(pytype):
            return "float64"
        elif type_check_list(pytype):  # there are only lists of ints in the dataset
            return "[]int"
        print("UNKNOWN", pytype)
        return "UNKNOWN"

    def get_type_pylist(self, list) -> str:
        if len(list) == 0:
            raise Exception("Given empty list to get_type_pylist")

        elem_type = self.pytype_to_gotype(list[0])
        float_count = 0
        int_count = 0
        mismatch = False

        for el in list[1::]:
            type_el = self.pytype_to_gotype(el)
            if type_el != elem_type:
                mismatch = True

            if type_el == "int":
                int_count += 1
            elif type_el == "float64":
                float_count += 1

        if mismatch:
            if float_count + int_count == len(list) - 1:
                return "float64"
            else:
                return "interface{}"

        return elem_type

    def patch_empty(self, s, t) -> str:
        match s:
            case "PATCH list":
                if t is None:
                    return "[]interface{}" + "{}"

                return translate_type(t) + "{}"
            case "PATCH dict":
                if t is None:
                    return "map[interface{}]interface{}" + "{}"

                return translate_type(t) + "{}"
            case _other:
                return s

    def gen_literal(self, c: bool | str | int | float | None):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower()
        if type(c) == str:
            return "\"%s\"" % c.replace("\n", "\\n")
        if type(c) == None or c is None:  # this is possible, maybe we should make a box for Optional
            return "nil"
        return repr(c)

    def gen_unaryop(self, op: str, v: str) -> str:
        """Translate a unary operation (op, v)"""
        return op + v

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return self.convert_identifier(v)

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to []'type'{ x, y, z }
        """
        if len(l) == 0:
            print("empty list. needs patching")
            return "PATCH list"

        return f"[]{self.get_type_pylist(l)}" + "{" + ", ".join([self.patch_empty(e, None) for e in l]) + "}"

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to { x, y, z }
        """
        return "[]interface{}{" + ", ".join([self.patch_empty(e, None) for e in t]) + "}"

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to 
            map['keyType']'valueType'{ ["key1"] = val1, ["key2"] = val2 }
        """
        if len(keys) == 0 or len(values) == 0:
            print("empty dict. needs patching")
            return "PATCH dict"

        keys_type = self.get_type_pylist(keys)
        values_type = self.get_type_pylist(values)

        return f"map[{keys_type}]{values_type}" + "{" + ", ".join(f"{self.patch_empty(k, None)}: {self.patch_empty(v, None)}" for k,
                                                                  v in zip(keys, values)) + "}"

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        args = [self.patch_empty(arg, self.type[0][i])
                for i, arg in enumerate(args)]
        return func + "(" + ", ".join(args) + ")"

    def no_completion_prompt_stub(self) -> str:
        return "\tpanic(42)\n}"


    def finalize(self, expr: str, context: str) -> str:
        match context:
            case "lhs":
                return expr
            case "rhs":
                return self.patch_empty(expr, self.type[1])
            case _other:
                raise Exception("bad context in finalize")
