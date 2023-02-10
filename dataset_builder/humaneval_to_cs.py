# This script translates problems from the OpenAI HumanEval dataset into C#.
import re
import ast
from typing import List, Optional, Tuple
from humaneval_to_cpp import DOCSTRING_LINESTART_RE
import humaneval_to_cpp

CSHARP_CLASS_NAME = "Problem"
#Refactoring needed

def to_camel_case(snake_str):
    components = snake_str.split('_')
    # We capitalize the first letter of each component
    # with the 'title' method and join them together.
    return ''.join(x.title() for x in components)

class Translator(humaneval_to_cpp.Translator):
    stop = ["\n    }\n"]

    def __init__(self):
        super().__init__()
        self.string_type = "string"
        self.float_type = "float"
        self.int_type = "long"
        self.bool_type = "bool"
        self.none_type = "null"
        self.list_type = "List"
        self.tuple_type = "Tuple"
        self.dict_type = "Dictionary"
        self.optional_type = "Nullable"
        self.any_type = "object"
        self.indent = "    "
        self.keywords["string"] = "str"
        self.keywords["base"] = "numBase"
        self.keywords["decimal"] = "decimalNum"
        self.make_tuple = "Tuple.Create"

    def file_ext(self):
        return "cs"

    #Type creation and literal creation of List, Dict, Map, and Optional
    def gen_list_type(self, elem_type):
        '''Generate type for List<T>
        '''
        return self.list_type + "<%s>"% elem_type

    def gen_make_list(self, elem_type, list_contents):
        '''Generate List literal using and array literal
            `new List<T>(new int[]{...})
        '''
        if list_contents == "":
            array = ""
        else:
            array = f"new {elem_type}[]" + list_contents
        return "new " + self.list_type + "<%s>"%elem_type + "(" + array + ")"

    def gen_array_literal(self, list_contents):
        '''Generate an array literal with contents
            {e1, e2, e3, e4, ...}
        '''
        return "{" + list_contents + "}"

    def gen_dict_type(self, ktype, vtype):
        '''Generate Dict<K,V>
        '''
        return self.dict_type + "<%s,%s>"  % (ktype, vtype)

    def gen_map_literal(self, keys, values):
        '''Generate dict literal
            {{k1,v1}, {k2,v2}, {k3,v3}, ...}
        '''
        return "{" + ", ".join(f"{{{k}, {v}}}" for k, v in zip(keys, values)) + "}"
    
    def gen_map(self, dict_type, map_literal):
        '''Generate Dict object from literal
            `new Dict<K, V>() {{k,v}, {k,v}, ... }
        '''
        csharp_type = self.translate_pytype(dict_type)
        return f"new {csharp_type}(){map_literal}"

    def gen_optional_type(self, elem_type):
        '''Generate C#'s Optional, i.e. Nullable 
            Nullable<T> is only generated for primitive types
        '''
        if self.is_primitive_type(elem_type):
            return self.optional_type + "<%s>" % elem_type
        return elem_type

    def gen_optional(self, elem_type, elem):
        '''Generate value for C#'s Optional.
            if elem is null generate (Nullable<T>) null
        '''
        if elem == self.none_type:
            return "(" + self.optional_type + "<%s>" % elem_type + ")" + elem
        return elem
    
    def gen_union(self, elems):
        raise Exception("C# do not support union")

    #gen_tuple_type and gen_make_tuple are same as C++

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
            The function name is converted to C#'s convention that uses CamelCase
        '''
        self.reinit()
        class_decl = f"class {CSHARP_CLASS_NAME} {{\n"
        indent = "    "
        comment_start = self.indent + "//"
        csharp_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" + comment_start + " ", description.strip() + "\n"
        ))
        self.args_type = [self.translate_pytype(arg.annotation) for arg in args]
        formal_args = [f"{self.translate_pytype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)
        self.entry_point = to_camel_case(name)
        self.ret_ann = _returns
        self.translated_return_type = self.translate_pytype(_returns) #make it ret_translated_type 
        csharp_prompt = f"{self.module_imports()}{class_decl}{csharp_description}{self.indent}public static {self.translated_return_type} {self.entry_point}({formal_arg_list})" + " {\n"

        return csharp_prompt

    def gen_var(self, v: str) -> Tuple[str, None]:
        """Translate a variable with name v."""
        if v in self.keywords:
            #Add _ around keyword
            return self.keywords[v], None
        return v, None

    def is_primitive_type(self, csharp_type):
        '''Return if a type is primitive.
            float, long, and bool are considered primitive type
        '''
        return csharp_type in [self.float_type, self.bool_type, self.int_type]

    def return_default_value(self, csharp_type):
        '''Recursively generate default value of a given C# type based on following rules:

            default(int) => 0
            default(float) => 0.0
            default(bool) => true
            default(List<T>) => new List<T> ()
            default(Tupe<T, U>) => Tuple.Create(default(T), default(U))
            default(Optional<T>) => (Optional<T>)null
            default(Any other object of type T) => new T()
        '''
        if self.is_primitive_type(csharp_type):
            if self.int_type in csharp_type:
                return "0"
            elif self.float_type in csharp_type:
                return "0.0f"
            elif self.bool_type in csharp_type:
                return "true"
        elif self.string_type == csharp_type:
            return '""'
        elif csharp_type.find(f"{self.list_type}<") == 0:
            elem_type = re.findall(rf'{self.list_type}<(.+)>', csharp_type)[0]
            #List default is: new List<T>()
            return self.gen_make_list(elem_type, "")
        elif csharp_type.find(f"{self.tuple_type}<") == 0:
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
        This code adds a return statement for default value if required, which makes sure
        compiler does not complain about no return value.
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
            #Do not update type if it is primitive
            return f"({expected_type}){right[0]}"

        return super().update_type(right, expected_type)

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        Use ==  for primitive types and Equals for objects
        """
        #Empty the union declarations
        self.union_decls = {}
        if self.is_primitive_type(self.translated_return_type):
            return f"    Debug.Assert({left} == {right});"
        else:
            return f"    Debug.Assert({left}.Equals({right}));"

    def find_type_to_coerce(self, expr):
        '''Return a type to coerce into another type.
            null is never coerced.
            And other types can be coerced similar to C++
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
            return repr(c)+"L", ast.Name(id="int")
        return super().gen_literal(c)

    def gen_call(self, func: str, args: List[Tuple[str, ast.Expr]]) -> Tuple[str, None]:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        func_name = func[0]
        # All function calls are calls to prompt
        func_name = to_camel_case(func_name)
        if func_name.lower() == "candidate":
            func_name = self.entry_point
        return func_name + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None
