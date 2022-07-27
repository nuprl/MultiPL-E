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


#TODO: Set annotations 

class CPPTranslator:
    '''Translate Python to C++.
       Each method returns a tuple of code and type of the expression
    '''

    #Seems like reasonable stop sequences for CPP
    stop = ["\n\n","\nvoid", "\nint", "}\nbool"]

    def __init__(self, file_ext):
        self.file_ext = file_ext

    def pytype_to_cpptype(self, ann: ast.expr | None) -> str:
        if ann == None:
            print(
                f"Didn't find annotation for a fundecl arg")
            return ""
            raise Exception(f"No annotation")

        type_name = ""
        match ann:
            case ast.Name(id="str"):
                type_name = "std::string"
            case ast.Name(id="int"):
                type_name = "int"
            case ast.Name(id="float"):
                type_name = "float"
            case ast.Name(id="bool"):
                type_name = "bool"
            case ast.List(elts=elts):
                type_name = "std::vector<%s>"%self.pytype_to_cpptype(elts[0]).strip()
            case ast.Tuple(elts=elts):
                type_name = "std::vector<%s>"%self.pytype_to_cpptype(elts[0]).strip()
            case ast.Subscript(value=ast.Name(id="Dict"), slice=ast.Tuple(elts=key_val_type)):
                type_name = "std::map<%s, %s>"%(self.pytype_to_cpptype(key_val_type[0]), self.pytype_to_cpptype(key_val_type[1]))
            case ast.Subscript(value=ast.Name(id="List"), slice=elem_type):
                type_name = "std::vector<%s>"%self.pytype_to_cpptype(elem_type).strip()
            case ast.Subscript(value=ast.Name(id="Tuple"), slice=elem_type):
                type_name = "std::vector<%s>"%self.pytype_to_cpptype(elem_type).strip()
            case ast.Name(id="Any"):
                #Cannot do this in C++
                print("Cannot use Any in C++")
                
            # case ast.Subscript(value=ast.Name(id="Union"), slice=ast.Union(elts)):
            #     type_name += "union"
            case _other:
                print(f"Unhandled annotation: {ast.dump(ann)}")
                # raise Exception(f"Unhandled annotation: {ann}")
        return type_name

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:       
        comment_start = "//"
        CPP_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" +comment_start + " ", description.strip()) + "\n"
        )
        args = [f"{self.pytype_to_cpptype(arg.annotation)} {arg.arg}" for arg in args]
        arg_list = ", ".join(args)

        ret_type = self.pytype_to_cpptype(_returns)
        return f"{CPP_description}{ret_type} {name}({arg_list})" + " {\n"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "",
            "int main() {",
            f"    auto candidate = {entry_point};"
        ]
    
    def module_imports(self):
        return "\n".join([
            "#include<iostream>",
            "#include<vector>",
            "#include<string>",
            "#include<map>",
            "#include<assert.h>",
            ""
        ])

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}"]

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
            return str(c).lower(), ast.Name("bool")
        if type(c) == str:
            return repr(c), ast.Name("str")
        if type(c) == int:
            return repr(c), ast.Name("int")
        if type(c) == float:
            return repr(c), ast.Name("float")
        return repr(c), ast.Name("None")

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        return v, None

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """
        #Assuming all elements in list have same type
        if l == [] or l == ():
          return "std::vector<int>()", ast.List([ast.Name("int")])

        elem_type = self.pytype_to_cpptype(l[0][1])
        return f"std::vector<{elem_type}>" + "{" + ", ".join([e[0] for e in l]) + "}", ast.List([l[0][1]])

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
        return cppdict + "{" + ", ".join(f"[{k}] = {v}" for k, v in zip(keys, values)) + "}", ast.Dict(keys_type, values_type)

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func[0] + "(" + ", ".join([arg[0] for arg in args]) + ")", None


if __name__ == "__main__":
    translator = CPPTranslator("cpp")
    main(translator)
