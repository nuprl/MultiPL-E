# Authored by  Abhinav Jangda
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into CPP.
import re
import ast
from typing import List, Dict
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")


class CPPTranslator:
    '''Translate Python to C++.
       Each method returns a tuple of code and type for an expression
    '''


    # NOTE(arjun): Seems like reasonable stop sequences for CPP
    stop = ["}\n\n", "}\nvoid", "}\nint", "}\nstd::string", "}\nfloat"]

    def __init__(self, file_ext):
        self.file_ext = file_ext

    def pytype_to_cpptype(self, pytype):
        #Ugh: match does not work with types
        #Only matching types that appear in the dataset
        if pytype == int:
            return "int"
        elif pytype == str:
            return "std::string"
        elif pytype == float:
            return "float"
        elif pytype == List[int]:
            return "std::vector<int>"
        print ("UNKNOWN", pytype)
        return "UNKNOWN"

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        comment_start = "//"
        CPP_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" +comment_start + " ", description.strip()) + "\n"
        )
        arg_names = [arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        return f"{CPP_description}void {name}({arg_list})\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "#include<iostream>",
            "#include<vector>",
            "#include<string>",
            "#include<assert.h>",
            "",
            "int main() {",
            f"    auto candidate = {entry_point};"
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}"] #["end", "", "os.exit(lu.CPPUnit.run())"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return f"    assert({left[0]} == {right[0]});"

    # NOTE(arjun): Really, no Nones?
    def gen_literal(self, c: bool | str | int | float | None):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower(), type(c)
        return repr(c), type(c)

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v, None

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """
        #Assuming all elements in list have same type
        if l == []:
          return "{}", List[None]

        elem_type = self.pytype_to_cpptype(l[0][1])
        return f"std::vector<{elem_type}>" + "{" + ", ".join([e[0] for e in l]) + "}", List[l[0][1]]

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to vector<?>{ x, y, z }
        """
        #Assuming all elements in tuple have same type
        return self.gen_list(t)

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to map<?,?>{ ["key1"] = val1, ["key2"] = val2 }
        """
        if keys == [] and values == []:
          return "{}", List[None]
        
        #Assuming all keys and values have same type
        keys_type = keys[0][1]
        values_type = values[0][1]
        keys = [k[0] for k in keys]
        values = [v[0] for v in values]
        
        cppdict = f"std::map<{self.pytype_to_cpptype(keys_type)}, {self.pytype_to_cpptype(keys_type)}>"
        return cppdict + "{" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "}", Dict[keys_type, values_type]

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func[0] + "(" + ", ".join([arg[0] for arg in args]) + ")", None


if __name__ == "__main__":
    translator = CPPTranslator("cpp")
    main(translator)
