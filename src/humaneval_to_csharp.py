# Authored by  Abhinav Jangda
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into csharp.

import re
import ast
from typing import List, Optional, Tuple
from generic_translator import main
from humaneval_to_cpp import CPPTranslator, DOCSTRING_LINESTART_RE

CSHARP_CLASS_NAME = "Problem"
#Refactoring needed

class CsharpTranslator(CPPTranslator):
    stop = ["\n    }\n"]

    def __init__(self, file_ext):
        super().__init__(file_ext)
        self.string_type = "string"
        self.float_type = "float"
        self.int_type = "int"
        self.bool_type = "bool"
        self.none_type = "null"
        self.list_type = "List<%s>"
        self.tuple_type = "Tuple<%s>"
        self.dict_type = "Dictionary"
        self.optional_type = "Nullable"
        self.any_type = "std::any"
        self.indent = "    "
        self.keywords["string"] = "str"
        self.keywords["base"] = "numBase"
        self.keywords["decimal"] = "decimalNum"
        self.make_tuple = "Tuple.Create"

    def gen_make_list(self, elem_type, list_contents):
        if list_contents == "":
            array = ""
        else:
            array = f"new {elem_type}[]" + list_contents
        return "new " + self.list_type%elem_type + "(" + array + ")"
    
    def gen_array_literal(self, list_contents):
        return "{" + list_contents + "}"

    def gen_make_tuple(self, elems):
        return self.make_tuple+"("+elems+")"

    def gen_map_literal(self, keys, values):
        return "{" + ", ".join(f"{{{k}, {v}}}" for k, v in zip(keys, values)) + "}"

    def gen_optional_type(self, elem_type):
        if self.is_primitive_type(elem_type):
            return self.optional_type + "<%s>" % elem_type
        return elem_type

    def gen_optional(self, elem_type, elem):
        if elem == self.none_type:
            return "(" + self.optional_type + "<%s>" % elem_type + ")" + elem
        return elem

    def gen_map(self, dict_type, map_literal):
        csharp_type = self.translate_pytype(dict_type)
        return f"new {csharp_type}(){map_literal}"

    def module_imports(self) -> str:
        return "\n".join([
            "using System;",
            "using System.Numerics;",
            "using System.Diagnostics;",
            "using System.Collections.Generic;",
            "using System.Linq;",
            "using System.Text;",
            "using System.Security.Cryptography;"
        ]) + "\n"
    
    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        '''Translate Python prompt to C#.
           In addition to comments and example, the prompt contain union declarations (if there are any) 
           and include files (TODO)
        '''
        def to_camel_case(snake_str):
            components = snake_str.split('_')
            # We capitalize the first letter of each component except the first one
            # with the 'title' method and join them together.
            return ''.join(x.title() for x in components)

        class_decl = f"class {CSHARP_CLASS_NAME} {{\n"
        indent = "    "
        comment_start = self.indent + "//"
        csharp_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" + comment_start + " ", description.strip() + "\n"
        ))
        self.args_type = [self.translate_pytype(arg.annotation) for arg in args]
        formal_args = [f"{self.translate_pytype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)
        #Transform entry point to csharp style Camel case
        self.entry_point = to_camel_case(name)
        self.ret_ann = _returns
        self.translated_return_type = self.translate_pytype(_returns) #make it ret_translated_type 
        csharp_prompt = f"{self.module_imports()}{class_decl}{csharp_description}{self.indent}public static {self.translated_return_type} {self.entry_point}({formal_arg_list})" + " {\n"

        return csharp_prompt
    
    def is_primitive_type(self, csharp_type):
        return csharp_type in [self.float_type, self.bool_type, self.int_type]

    def return_default_value(self, csharp_type): #make this function name default value and add it in C++ Translator 
        if self.is_primitive_type(csharp_type):
            if self.int_type in csharp_type:
                return "0"
            elif self.float_type in csharp_type:
                return "0.0f"
            elif self.bool_type in csharp_type:
                return "true"
        elif self.string_type == csharp_type:
            return '""'
        elif csharp_type.find("List<") == 0:
            elem_type = re.findall(rf'List<(.+)>', csharp_type)[0]
            #List default is: new List<T>()
            return self.gen_make_list(elem_type, "")
        elif csharp_type.find("Tuple<") == 0 : #TODO: use gen_optional/make_tuple to createthem and search for self.tuple_type
            template_types = re.findall(rf'Tuple<(.+),(.+)>', csharp_type)[0]
            first_default = self.return_default_value(template_types[0].strip())
            second_default = self.return_default_value(template_types[1].strip())
            return self.gen_make_tuple(first_default + "," + second_default)
        elif csharp_type.find(self.optional_type) == 0:
            return f"({csharp_type})null"
        else:
            return f"new {csharp_type}()"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """

        return [
            # "return " + self.return_default_value(self.translated_return_type) + ";",
            self.indent + "}",
            self.indent + "public static void Main(string[] args) {", 
        ]
    
    def test_suite_suffix_lines(self) -> List[str]:
        '''End class definition and main definition
        '''
        return [self.indent + "}\n",
        "}\n"
        ]
    
    def update_type(self, right: Tuple[ast.Expr, str], expected_type: Tuple[str]) -> str:
        if self.is_primitive_type(expected_type) and self.translate_pytype(right[1]) != expected_type:
            return f"({expected_type}){right[0]}"

        return super().update_type(right, expected_type)

    def deep_equality(self, left: Tuple[str, ast.Expr], right: Tuple[str, ast.Expr]) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        In C++ using == checks for structural equality
        """
        right = self.update_type(right, self.translated_return_type)
        #Empty the union declarations
        self.union_decls = {}
        if self.is_primitive_type(self.translated_return_type):
            return f"    Debug.Assert({left[0]} == {right});"
        else:
            return f"    Debug.Assert({left[0]}.Equals({right}));"

    def find_type_to_coerce(self, expr):
        '''
        '''
        if expr == "null":
            #No need to coerce null
            return []
        dict_elem_types = re.findall(fr"{self.dict_type}<.+,.+>\(", expr)
        if dict_elem_types != []:
            return dict_elem_types
        return re.findall("new (.+?\()", expr)

    def gen_literal(self, c: bool | str | int | float | None) -> Tuple[str, ast.Name]:
        """Translate a literal expression
            Append "f" to floats
        """
        if type(c) == float:
            return repr(c) + "f", ast.Name(id="float")
        if type(c) == int:
            return repr(c), ast.Name(id="int")
        return CPPTranslator.gen_literal(self, c)

    def gen_call(self, func: str, args: List[Tuple[str, ast.Expr]]) -> Tuple[str, None]:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        func_name = func[0]
        if func_name == "candidate":
            func_name = self.entry_point
        return func_name + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None

if __name__ == "__main__":
    translator = CsharpTranslator("cs")
    main(translator)
