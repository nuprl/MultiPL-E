# Authored by  Abhinav Jangda
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Java.

import re
import ast
from typing import List, Optional, Tuple
from generic_translator import main
from humaneval_to_cpp import CPPTranslator, DOCSTRING_LINESTART_RE

JAVA_CLASS_NAME = "Problem"
#Refactoring needed

class JavaTranslator(CPPTranslator):
    stop = ["    }\n    //","    }\n    p", "    }\n}","\n    }\n"]

    def __init__(self, file_ext):
        super().__init__(file_ext)
        self.string_type = "String"
        self.float_type = "float"
        self.int_type = "int"
        self.bool_type = "boolean"
        self.none_type = "Optional.empty()"
        self.list_type = "ArrayList<%s>"
        self.tuple_type = "Pair"
        self.dict_type = "HashMap"
        self.optional_type = "Optional"
        self.any_type = "std::any"
        self.indent = "    "
        self.make_tuple = "Pair.with"
        self.make_optional = "Optional.of"

    def gen_list_type(self, elem_type):
        print(elem_type, self.box_type(elem_type))
        return self.list_type % self.box_type(elem_type)

    def gen_make_list(self, elem_type, list_contents):
        if list_contents == "":
            list_contents = "()"
        return "new " + self.list_type%self.box_type(elem_type) + "(Arrays.asList" + list_contents + ")"
    
    def gen_dict_type(self, ktype, vtype):
        return self.dict_type + "<%s,%s>"  % (self.box_type(ktype), self.box_type(vtype))

    def gen_array_literal(self, list_contents):
        return "(" + list_contents + ")"
    
    def gen_map_literal(self, keys, values):
        return ", ".join(f"{k}, {v}" for k, v in zip(keys, values))

    def gen_optional_type(self, types):
        return self.optional_type + "<%s>" % self.box_type(types)

    def gen_optional(self, types, elem):
        return f"{self.make_optional}(%s)"%elem

    def gen_map(self, dict_type, map_literal):
        java_type = self.translate_pytype(dict_type) + "(Map"
        return f"new {java_type}.of({map_literal}))"

    def gen_tuple_type(self, elem_types):
        return self.tuple_type + "<%s>" % ", ".join([self.box_type(et) for et in elem_types])

    def box_type(self, primitive_type):
        if self.is_primitive_type(primitive_type):
            match primitive_type:
                case "int":
                    return "Integer"
                case "float":
                    return "Float"
                case "long":
                    return "Long"
                case "boolean":
                    return "Boolean"
                case "double":
                    return "Double"
                case _other:
                    raise Exception("Unknown primitive type '%s'"%primitive_type)
        
        return primitive_type

    def module_imports(self) -> str:
        return "\n".join([
            "import java.util.*;",
            "import java.lang.reflect.*;",
            "import org.javatuples.*;",
            "import java.security.*;",
            "import java.math.*;",
            "import java.io.*;",
            "import java.util.stream.*;"
        ]) + "\n"
    
    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        '''Translate Python prompt to Java.
           In addition to comments and example, the prompt contain union declarations (if there are any) 
           and include files (TODO)
        '''
        def to_camel_case(snake_str):
            components = snake_str.split('_')
            # We capitalize the first letter of each component except the first one
            # with the 'title' method and join them together.
            return components[0] + ''.join(x.title() for x in components[1:])

        class_decl = f"class {JAVA_CLASS_NAME} {{\n"
        indent = "    "
        comment_start = self.indent + "//"
        java_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" + comment_start + " ", description.strip()) + "\n"
        )
        self.args_type = [self.translate_pytype(arg.annotation) for arg in args]
        formal_args = [f"{self.translate_pytype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)
        #Transform entry point to Java style Camel case
        self.entry_point = to_camel_case(name)
        self.ret_ann = _returns
        self.translated_return_type = self.translate_pytype(_returns)
        java_prompt = f"{self.module_imports()}{class_decl}{java_description}{self.indent}public static {self.translated_return_type} {self.entry_point}({formal_arg_list})" + " {\n"

        return java_prompt
    
    def is_primitive_type(self, java_type):
        return java_type in [self.float_type, self.bool_type, self.int_type]

    def is_boxed_type(self, boxed_type):
        return boxed_type in [self.box_type(t) for t in [self.float_type, self.bool_type, self.int_type]]

    def return_default_value(self, csharp_type): #make this function name default value and add it in C++ Translator 
        if self.is_primitive_type(csharp_type) or self.is_boxed_type(csharp_type):
            if self.int_type in csharp_type or self.box_type(self.int_type) in csharp_type:
                return "0"
            elif self.float_type in csharp_type or self.box_type(self.float_type) in csharp_type:
                return "0.0f"
            elif self.bool_type in csharp_type or self.box_type(self.bool_type) in csharp_type:
                return "true"
        elif self.string_type == csharp_type:
            return '""'
        elif csharp_type.find("List<") == 0:
            elem_type = re.findall(rf'List<(.+)>', csharp_type)[0]
            #List default is: new List<T>()
            return self.gen_make_list(elem_type, "")
        elif csharp_type.find(f"{self.tuple_type}<") == 0 : #TODO: use gen_optional/gen_make_list to createthem and search for self.tuple_type
            template_types = re.findall(rf'{self.tuple_type}<(.+),(.+)>', csharp_type)[0]
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
            "return " + self.return_default_value(self.translated_return_type) + ";",
            self.indent + "}",
            self.indent + "public static void main(String[] args) {",
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

        return CPPTranslator.update_type(self, right, expected_type) #TODO: Use super?

    def deep_equality(self, left: Tuple[str, ast.Expr], right: Tuple[str, ast.Expr]) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        In C++ using == checks for structural equality
        """
        right = self.update_type(right, self.translated_return_type)
        #Empty the union declarations
        self.union_decls = {}
        if self.is_primitive_type(self.translated_return_type):
            return f"    assert({left[0]} == {right});"
        else:
            return f"    assert({left[0]}.equals({right}));"

    def find_type_to_coerce(self, expr):
        '''
        '''
        
        if "Arrays.asList(" in expr:
            return [expr[expr.index("new ")+len("new "):expr.index("Arrays.asList(")]]
        if 'Optional.of(' in expr:
            return []
        return re.findall("new (.+)\(", expr)

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
    translator = JavaTranslator("java")
    main(translator)
