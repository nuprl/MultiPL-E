# This script translates problems from the OpenAI HumanEval dataset into Scala.
import re
import ast
from typing import List,  Tuple
from humaneval_to_cpp import DOCSTRING_LINESTART_RE
import humaneval_to_cpp

SCALA_CLASS_NAME = "Problem"

def to_camel_case(snake_str):
    components = snake_str.split('_')
    # We capitalize the first letter of each component except the first one
    # with the 'title' method and join them together.
    return components[0] + ''.join(x.title() for x in components[1:])

class Translator(humaneval_to_cpp.Translator):
    stop = ["\n    }\n"]

    def __init__(self):
        super().__init__()
        self.string_type = "String"
        self.float_type = "Float"
        self.int_type = "Long"
        self.bool_type = "Boolean"
        self.none_type = "None"
        self.list_type = "List"
        self.tuple_type = "Tuple2"
        self.dict_type = "Map"
        self.optional_type = "Option"
        self.any_type = "Any"
        self.indent = "    "
        self.make_tuple = ""
        self.make_optional = "Some"
        self.union_decls = {}

    def file_ext(self):
        return "scala"

    #Type creation and literal creation of List, Dict, Map, and Optional
    def gen_list_type(self, elem_type):
        '''Generate type for List<T>
        '''
        return self.list_type + "[%s]" % elem_type

    def gen_make_list(self, elem_type, list_contents):
        '''Generate List literal
        '''
        if list_contents == "":
            list_contents = "()"
        return self.list_type + "[%s]"%elem_type + list_contents
    
    def gen_array_literal(self, list_contents):
        '''Generate an array literal with contents
            (e1, e2, e3, e4, ...)
        '''
        return "(" + list_contents + ")"

    def gen_dict_type(self, ktype, vtype):
        '''Generate HashMap<K,V>
        '''
        return self.dict_type + "[%s,%s]"  % (ktype, vtype)
    
    def gen_map_literal(self, keys, values):
        '''Generate dict literal
            k1,v1, k2,v2, k3,v3, ...
        '''
        return ", ".join(f"{k} -> {v}" for k, v in zip(keys, values))

    def gen_map(self, dict_type, map_literal):
        '''Generate Dict object from literal
            `HashMap<K, V>(Map.of({k,v}, {k,v}, ... })
        '''
        java_type = self.translate_pytype(dict_type)
        return f"{java_type}({map_literal})"

    def gen_optional_type(self, types):
        '''Generate Optional<T>
        '''
        return self.optional_type + "[%s]" % types

    def gen_optional(self, types, elem):
        '''Generate Optional as 
            `Optional.of`
        '''
        return f"{self.make_optional}(%s)"%elem

    def gen_tuple_type(self, elem_types):
        '''Generate Pair<T1, T2>'''
        return self.tuple_type + "[%s]" % ", ".join([et for et in elem_types])

    def gen_make_tuple(self, elems):
        return "(" + elems + ")"
    
    def gen_union(self, elems):
      if len(elems) == 2:
        t = f"Either[{elems[0]}, {elems[1]}]"
        self.union_decls[t] = {}
        return t
      raise Exception("Not support union of more than 2 elements")

    def gen_type_cast(self, expr, new_type, current_type):
        cast_func = ".to"
        match new_type:
          case ast.Name(id="int"):
            cast_func += self.int_type
          case ast.Name(id="float"):
            cast_func += self.float_type
          case ast.Name(id="bool"):
            cast_func += self.bool_type
          case _other:
            cast_func = ""

        return f"{expr}{cast_func}"

    def module_imports(self) -> str:
        return "\n".join([
            "import scala.math._",
            "import scala.collection.mutable._",
        ]) + "\n"
    
    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        '''Translate Python prompt to Scala.
           The function name is converted to Scala's convention of smallCamelCase
        '''
        self.reinit()
        class_decl = f"object {SCALA_CLASS_NAME} {{\n"
        indent = "    "
        comment_start = self.indent + "//"
        java_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" + comment_start + " ", description.strip()) + "\n"
        )
        self.args_type = [self.translate_pytype(arg.annotation) for arg in args]
        formal_args = [f"{self.gen_var(arg.arg)[0]} : {self.translate_pytype(arg.annotation)}" for arg in args]
        formal_arg_list = ", ".join(formal_args)
        #Transform entry point to Scala style Camel case
        self.entry_point = to_camel_case(name)
        self.ret_ann = _returns
        self.translated_return_type = self.translate_pytype(_returns)
        java_prompt = f"{self.module_imports()}{class_decl}{java_description}{self.indent}def {self.entry_point}({formal_arg_list}) : {self.translated_return_type}" + " = {\n"

        return java_prompt
    
    def is_primitive_type(self, java_type):
        '''Return if a type is primitive type 
        '''
        return java_type in [self.float_type, self.bool_type, self.int_type]

    def is_boxed_type(self, boxed_type):
        '''Return if a type is a boxed version of primitive type
        '''
        return boxed_type in [t for t in [self.float_type, self.bool_type, self.int_type]]

    def return_default_value(self, csharp_type):
        '''Recursively generate default value of a given Scala type based on following rules:

            default(Int) => 0
            default(Float) => 0.0
            default(Boolean) => true
            default(List[T]) => List[T] ()
            default(Tuple[T, U]) => (default(T), default(U))
            default(Optional<T>) => None
            default(Any other object of type T) => new T()
        '''
        #TODO: This function is same as csharp(You can guess by the type). Combine them
        #into same functions
        if self.is_primitive_type(csharp_type):
            if self.int_type in csharp_type:
                return "0"
            elif self.float_type in csharp_type:
                return "0.0f"
            elif self.bool_type in csharp_type:
                return "true"
        elif self.string_type == csharp_type:
            return '""'
        elif csharp_type.find(f"{self.list_type}[") == 0:
            elem_type = re.findall(rf'{self.list_type}\[(.+)\]', csharp_type)[0]
            #List default is: new List<T>()
            return self.gen_make_list(elem_type, "")
        elif csharp_type.find(f"{self.tuple_type}[") == 0 : #TODO: use gen_optional/gen_make_list to createthem and search for self.tuple_type
            template_types = re.findall(r'\[(.+),(.+)\]', csharp_type)[0]
            first_default = self.return_default_value(template_types[0].strip())
            second_default = self.return_default_value(template_types[1].strip())
            return self.gen_make_tuple(first_default + "," + second_default)
        elif csharp_type.find(f"Either[") == 0:
            template_types = re.findall(r'\[(.+),(.+)\]', csharp_type)[0]
            return f"Left({self.return_default_value(template_types[0])})"
        elif csharp_type.find(self.optional_type) == 0:
            return "None"
        else:
            return f"{csharp_type}()"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        This code adds a return statement for default value if required, which makes sure
        compiler does not complain about no return value.
        """

        return [
            # "return " + self.return_default_value(self.translated_return_type),
            self.indent + "}",
            self.indent + "def main(args: Array[String]) = {",
        ]
    
    def test_suite_suffix_lines(self) -> List[str]:
        '''End class definition and main definition
        '''
        return [self.indent + "}\n",
        "}\n"
        ]
    
    def update_type(self, right: Tuple[ast.Expr, str], expected_type: Tuple[str]) -> str:
        if self.is_primitive_type(expected_type) and self.translate_pytype(right[1]) != expected_type:
            return self.gen_type_cast(right[0], expected_type, right[1])

        if '[' in expected_type and expected_type[:expected_type.find('[')] == self.optional_type != -1 \
            and right[0].find(self.none_type) == -1:
            return self.gen_optional('', right[0])

        return super().update_type(right, expected_type)

    def deep_equality(self, left: Tuple[str, ast.Expr], right: Tuple[str, ast.Expr]) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        Use == checks for primitive type and equals for object type
        """
        if self.is_primitive_type(self.translated_return_type):
            return f"    assert({left} == {right});"
        else:
            return f"    assert({left}.equals({right}));"

    def find_type_to_coerce(self, expr):
        '''Return a type to coerce into another type.
        '''
        
        return re.findall(".+?\(", expr)

    def gen_literal(self, c: bool | str | int | float | None) -> Tuple[str, ast.Name]:
        """Translate a literal expression
            Append "f" to floats
        """
        if type(c) == float:
            return repr(c) + "f", ast.Name(id="float")
        if type(c) == int:
            return repr(c) + "l", ast.Name(id="int")
        return super().gen_literal(c)

    def gen_call(self, func: str, args: List[Tuple[str, ast.Expr]]) -> Tuple[str, None]:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        func_name = func[0]
        func_name = to_camel_case(func_name)
        if func_name.lower() == "candidate":
            func_name = self.entry_point
        return func_name + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None
