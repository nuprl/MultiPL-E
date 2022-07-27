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

    UNKNOWN_TYPE = "?"

    #Seems like reasonable stop sequences for CPP
    stop = ["\n\n","\nvoid", "\nint", "}\nbool"]
    #C++ Keywords found in the dataset
    cpp_keywords = ["operator"]

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
                return "std::string"
            case ast.Name(id="int"):
                return "long"
            case ast.Name(id="float"):
                return "float"
            case ast.Name(id="bool"):
                return "bool"
            case ast.Name(id="None"):
                #It appears None is always used in optional
                return "{}"
            case ast.List(elts=elts):
                return "std::vector<%s>"%self.pytype_to_cpptype(elts[0])
            case ast.Tuple(elts=elts):
                return "std::tuple<%s>"%", ".join([self.pytype_to_cpptype(e) for e in elts])
            case ast.Dict(keys=k,values=v):
                return "std::map<%s, %s>"%(self.pytype_to_cpptype(k), self.pytype_to_cpptype(v))
            case ast.Subscript(value=ast.Name(id="Dict"), slice=ast.Tuple(elts=key_val_type)):
                return "std::map<%s, %s>"%(self.pytype_to_cpptype(key_val_type[0]), self.pytype_to_cpptype(key_val_type[1]))
            case ast.Subscript(value=ast.Name(id="List"), slice=elem_type):
                return "std::vector<%s>"%self.pytype_to_cpptype(elem_type)
            case ast.Subscript(value=ast.Name(id="Tuple"), slice=elts):
                if type(elts) is ast.Tuple:
                    return self.pytype_to_cpptype(elts)
                return "std::vector<%s>"%self.pytype_to_cpptype(elts)
            case ast.Subscript(value=ast.Name(id="Optional"), slice=elem_type):
                return "std::optional<%s>"%self.pytype_to_cpptype(elem_type)
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
        self.args_type = [self.pytype_to_cpptype(arg.annotation) for arg in args]
        formal_args = [f"{self.pytype_to_cpptype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)

        self.ret_type = self.pytype_to_cpptype(_returns)
        return f"{CPP_description}{self.ret_type} {name}({formal_arg_list})" + " {\n"
    
    def wrap_in_brackets(self, s):
        return f"({s})"

    def update_type(self, right, expected_type):
        '''Update type of the right expression if it is different from the
            return type of function
        '''
        if self.pytype_to_cpptype(right[1]) == expected_type:
            return self.wrap_in_brackets(right[0])
        
        if re.findall("(.+)\(", right[0]) == []:
            #No type? add the type of right
            return self.wrap_in_brackets(expected_type+"("+right[0]+")")
        return self.wrap_in_brackets(re.sub("(.+?)\(", expected_type+"(", right[0]))

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
            "#include<optional>",
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
        right = self.update_type(right, self.ret_type)
        return f"    assert({left[0]} == {right});"

    # NOTE(arjun): Really, no Nones?
    def gen_literal(self, c: bool | str | int | float | None):
        """Translate a literal expression
        c: is the literal value
        """
        if type(c) == bool:
            return str(c).lower(), ast.Name("bool")
        if type(c) == str:
            return f'"{c}"', ast.Name("str")
        if type(c) == int:
            return repr(c), ast.Name("int")
        if type(c) == float:
            return repr(c), ast.Name("float")
        #It appears None occurs for only optional
        return "{}", ast.Name("None")

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        
        if v in self.cpp_keywords:
            return "_"+v+"_", None
        return v, None

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """
        #Assuming all elements in list have same type
        if l == [] or l == ():
          return "std::vector<int>()", ast.List([ast.Name("int")])

        elem_type = self.pytype_to_cpptype(l[0][1])
        return f"std::vector<{elem_type}>" + "({" + ", ".join([e[0] for e in l]) + "})", ast.List([l[0][1]])

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to make_tuple<?>{ x, y, z }
        """
        if t == [] or t == ():
          return "std::tuple<int>()", ast.List([ast.Name("int")])
        
        return "std::make_tuple(" + ", ".join([e[0] for e in t]) + ")", \
            ast.Tuple([e[1] for e in t])

    def gen_dict(self, keys: List[str], values: List[str]) -> str:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to map<?,?>{ ["key1"] = val1, ["key2"] = val2 }
        """
        if keys == [] and values == []:
            dict_type = ast.Dict(ast.Name("None"), ast.Name("None"))
            cpp_type = self.pytype_to_cpptype(dict_type)
            return cpp_type+"({})", dict_type
        
        #Assuming all keys and values have same type
        keys_type = keys[0][1]
        values_type = values[0][1]
        keys = [k[0] for k in keys]
        values = [v[0] for v in values]
        
        dict_type = ast.Dict(keys_type, values_type)
        cpp_type = self.pytype_to_cpptype(dict_type)
        return cpp_type + "({ " + ", ".join(f"{{{k}, {v}}}" for k, v in zip(keys, values)) + " })", dict_type

    def gen_call(self, func: str, args: List[str]) -> str:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func[0] + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None


if __name__ == "__main__":
    translator = CPPTranslator("cpp")
    main(translator)
