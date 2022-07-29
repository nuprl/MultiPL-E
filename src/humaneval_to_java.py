# Authored by  Abhinav Jangda
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into Java.

import re
import ast
from typing import List, Optional
from generic_translator import main
from humaneval_to_cpp import CPPTranslator, DOCSTRING_LINESTART_RE


class JavaTranslator(CPPTranslator):
    stop = ["}\n\n"]

    def __init__(self, file_ext):
        super().__init__(file_ext)
        self.string_type = "String"
        self.float_type = "float"
        self.int_type = "long"
        self.bool_type = "bool"
        self.none_type = "{}"
        self.list_type = "ArrayList<%s>"
        self.tuple_type = "std::tuple<%s>"
        self.make_tuple = "std::make_tuple"
        self.dict_type = "HashMap<%s, %s>"
        self.optional_type = "Optional<%s>"
        self.any_type = "std::any"
    
    def box_type(self, primitive_type):
        if primitive_type in [self.float_type, self.bool_type, self.int_type]:
            return primitive_type.capitalize()
        
        return primitive_type

    def module_imports(self) -> str:
        return "\n".join([
            "import java.util.*;\n"
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
        class_decl = "public class Problem {\n"
        indent = "    "
        comment_start = indent + "//"
        java_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" + comment_start + " ", description.strip()) + "\n"
        )
        self.args_type = [self.pytype_to_cpptype(arg.annotation) for arg in args]
        formal_args = [f"{self.pytype_to_cpptype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)

        self.ret_ann = _returns
        self.ret_cpp_type = self.pytype_to_cpptype(_returns)
        java_prompt = f"{self.module_imports()}{class_decl}{java_description}{indent}{self.ret_cpp_type} {name}({formal_arg_list})" + " {\n"

        return java_prompt
     

if __name__ == "__main__":
    translator = JavaTranslator("java")
    main(translator)
