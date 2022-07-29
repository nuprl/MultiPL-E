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
    stop = ["}\n\n"]

    def __init__(self, file_ext):
        super().__init__(file_ext)
        self.string_type = "String"
        self.float_type = "float"
        self.int_type = "long"
        self.bool_type = "boolean"
        self.none_type = "Optional.empty()"
        self.list_type = "ArrayList<%s>"
        self.tuple_type = "Pair<%s>"
        self.dict_type = "HashMap<%s, %s>"
        self.optional_type = "Optional<%s>"
        self.any_type = "std::any"
        self.indent = "    "
        self.get_default_val_def = """private static <T> T getDefaultValue(Class<T> clazz) {
return (T) Array.get(Array.newInstance(clazz, 1), 0);
}"""

    def make_list(self, elem_type, list_contents):
        if list_contents == "":
            list_contents = "()"
        return "new " + self.list_type%self.box_type(elem_type) + "(Arrays.asList" + list_contents + ")"
    
    def make_array_literal(self, list_contents):
        return "(" + list_contents + ")"
    
    def make_tuple(self, elem_types):
        return "Pair.with"
    
    def make_map_literal(self, keys, values):
        return ", ".join(f"{k}, {v}" for k, v in zip(keys, values))

    def make_optional_type(self, types):
        return self.optional_type % self.box_type(types)

    def make_optional(self, types):
        return "Optional.of" #Add the same make_optional in C++

    def make_map(self, dict_type, map_literal):
        java_type = self.pytype_to_cpptype(dict_type) + "(Map"
        return f"new {java_type}.of({map_literal}))"

    def box_type(self, primitive_type):
        if self.is_primitive_type(primitive_type):
            return primitive_type.capitalize()
        
        return primitive_type

    def module_imports(self) -> str:
        return "\n".join([
            "import java.util.*;",
            "import java.lang.reflect.*;",
            "import org.javatuples.*;"
        ]) + "\n"

    def pytype_to_cpptype(self, ann: ast.expr | None) -> str:
        '''Traverses an AST annotation and generates Java Types
            Could have just used CPPTranslator's method but Java wants boxed types
        '''

        if ann == None:
            raise Exception(f"No annotation")

        match ann:
            case ast.Name(id="str"):
                return self.string_type
            case ast.Name(id="int"):
                return self.int_type
            case ast.Name(id="float"):
                return self.float_type
            case ast.Name(id="bool"):
                return self.bool_type
            case ast.Name(id="None"):
                #It appears None is always used in optional
                return self.none_type
            case ast.List(elts=elts):
                return self.list_type % self.box_type(self.pytype_to_cpptype(elts[0]))
            case ast.Tuple(elts=elts):
                return self.tuple_type % ", ".join([self.box_type(self.pytype_to_cpptype(e)) for e in elts])
            case ast.Dict(keys=k,values=v):
                return self.dict_type % (self.box_type(self.pytype_to_cpptype(k)), self.box_type(self.pytype_to_cpptype(v)))
            case ast.Subscript(value=ast.Name(id="Dict"), slice=ast.Tuple(elts=key_val_type)):
                return self.dict_type % (self.box_type(self.pytype_to_cpptype(key_val_type[0])), self.box_type(self.pytype_to_cpptype(key_val_type[1])))
            case ast.Subscript(value=ast.Name(id="List"), slice=elem_type):
                return self.list_type % self.box_type(self.pytype_to_cpptype(elem_type))
            case ast.Subscript(value=ast.Name(id="Tuple"), slice=elts):
                if type(elts) is ast.Tuple:
                    return self.box_type(self.pytype_to_cpptype(elts))
                return self.list_type % self.box_type(self.pytype_to_cpptype(elts))
            case ast.Subscript(value=ast.Name(id="Optional"), slice=elem_type):
                return self.optional_type % self.box_type(self.pytype_to_cpptype(elem_type)) 
            case ast.Subscript(value=ast.Name(id="Union"), slice=ast.Tuple(elts=elems)):
                union_elems_types = []
                union_decl = {}
                for i,e in enumerate(elems):
                    elem_type = self.pytype_to_cpptype(e)
                    union_elems_types += [elem_type]
                    union_decl[elem_type] = f"f{i}" 

                union_name = ("Union_%s"%("_".join(union_elems_types))).replace("::", "_").replace("<", "_").replace(">", "_")
                if union_name not in self.union_decls:
                    self.union_decls[union_name] = union_decl

                return union_name
            case ast.Name(id="Any"):
                return self.any_type;
            case ast.Constant(value=None):
                return self.none_type
            case ast.Constant(value=Ellipsis):
                return ""
            case _other:
                print(f"Unhandled annotation: {ast.dump(ann)}")
                raise Exception(f"Unhandled annotation: {ann}")

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        '''Translate Python prompt to Java.
           In addition to comments and example, the prompt contain union declarations (if there are any) 
           and include files (TODO)
        '''
        class_decl = f"class {JAVA_CLASS_NAME} {{\n"
        class_decl += self.get_default_val_def
        indent = "    "
        comment_start = self.indent + "//"
        java_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" + comment_start + " ", description.strip()) + "\n"
        )
        self.args_type = [self.pytype_to_cpptype(arg.annotation) for arg in args]
        formal_args = [f"{self.pytype_to_cpptype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)
        self.entry_point = name
        self.ret_ann = _returns
        self.ret_cpp_type = self.pytype_to_cpptype(_returns)
        java_prompt = f"{self.module_imports()}{class_decl}{java_description}{self.indent}public static {self.ret_cpp_type} {name}({formal_arg_list})" + " {\n"

        return java_prompt
    
    def is_primitive_type(self, java_type):
        return java_type in [self.float_type, self.bool_type, self.int_type]

    def return_default_value(self, java_type):
        if self.is_primitive_type(java_type):
            return f"return getDefaultValue({java_type}.class);"
        elif "Pair" in java_type: #TODO: use make_optional/make_tuple to createthem and search for self.tuple_type
            if "Long, Long" in java_type:
                return f"return new {java_type}(0l, 0l);"
            elif "Float, Float" in java_type:
                return f"return new {java_type}(0f, 0f);"
            elif "Boolean, Boolean" in java_type:
                return f"return new {java_type}(true, true);"
            elif "String, String" in java_type:
                return f"return new {java_type}(\"\", \"\");"
            elif "String, Boolean" in java_type:
                return f"return new {java_type}(\"\", false);"
            elif "Optional<Long>, Optional<Long>" in java_type:
                return f"return new {java_type}(Optional.of(1l), Optional.of(1l));"
            elif "String, " in java_type:
                return f"return new {java_type}(\"\", \"\");"
            else:
                assert False, "Unknown " + java_type
        elif "Optional" in java_type:
            return f"return Optional.empty();"
        else:
            return f"return new {java_type}();"

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """

        return [
            self.return_default_value(self.ret_cpp_type),
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
        if self.is_primitive_type(expected_type) and self.pytype_to_cpptype(right[1]) != expected_type:
            return f"({expected_type}){right[0]}"

        return CPPTranslator.update_type(self, right, expected_type) #TODO: Use super?

    def deep_equality(self, left: Tuple[str, ast.Expr], right: Tuple[str, ast.Expr]) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        In C++ using == checks for structural equality
        """
        right = self.update_type(right, self.ret_cpp_type)
        #Empty the union declarations
        self.union_decls = {}
        if self.is_primitive_type(self.ret_cpp_type):
            return f"    assert({left[0]} == {right});"
        else:
            return f"    {left[0]}.equals({right});"

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
            return repr(c) + "l", ast.Name(id="int")
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
