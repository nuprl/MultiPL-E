# Authored by  Abhinav Jangda
# Copyright (c) 2022, Roblox Inc and University of Massachusetts Amherst
#
# This script translates problems from the OpenAI HumanEval dataset into CPP.
import re
import ast
from typing import List, Dict, Tuple
from generic_translator import main

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class CPPTranslator:
    '''Translate Python to C++.
       Each method returns a tuple of code and type of the expression
    '''

    #Seems like reasonable stop sequences for CPP
    stop = ["\n\n","\nvoid", "\nint", "\nbool"]
    #C++ Keywords found in the dataset
    cpp_keywords = ["operator"]

    def __init__(self, file_ext):
        '''Initializes C++ corresponding types.
            str -> std::string
            int -> long
            float -> float
            bool -> bool
            None -> {} (None only appears in optional)
            
            List -> std::vector
            Tuple -> std::tuple
            Dict -> std::map
            Optional -> std::optional
            Union -> Create a new Union type
            Any -> std::any
        '''
        self.file_ext = file_ext
        #Dictionary of union name to a dictionary of type to field
        self.union_decls = {}
        self.string_type = "std::string"
        self.float_type = "float"
        self.int_type = "long"
        self.bool_type = "bool"
        self.none_type = "{}"
        self.list_type = "std::vector<%s>"
        self.tuple_type = "std::tuple<%s>"
        self.dict_type = "std::map<%s, %s>"
        self.optional_type = "std::optional<%s>"
        self.any_type = "std::any"

    def pytype_to_cpptype(self, ann: ast.expr | None) -> str:
        '''Traverses an AST annotation and generates C++ Types
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
                return self.list_type % self.pytype_to_cpptype(elts[0])
            case ast.Tuple(elts=elts):
                return self.tuple_type % ", ".join([self.pytype_to_cpptype(e) for e in elts])
            case ast.Dict(keys=k,values=v):
                return self.dict_type % (self.pytype_to_cpptype(k), self.pytype_to_cpptype(v))
            case ast.Subscript(value=ast.Name(id="Dict"), slice=ast.Tuple(elts=key_val_type)):
                return self.dict_type % (self.pytype_to_cpptype(key_val_type[0]), self.pytype_to_cpptype(key_val_type[1]))
            case ast.Subscript(value=ast.Name(id="List"), slice=elem_type):
                return self.list_type % self.pytype_to_cpptype(elem_type)
            case ast.Subscript(value=ast.Name(id="Tuple"), slice=elts):
                if type(elts) is ast.Tuple:
                    return self.pytype_to_cpptype(elts)
                return self.list_type % self.pytype_to_cpptype(elts)
            case ast.Subscript(value=ast.Name(id="Optional"), slice=elem_type):
                return self.optional_type % self.pytype_to_cpptype(elem_type)
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
        '''Translate Python prompt to C++.
           In addition to comments and example, the prompt contain union declarations (if there are any) 
           and include files
        '''
        comment_start = "//"
        CPP_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" +comment_start + " ", description.strip()) + "\n"
        )
        self.args_type = [self.pytype_to_cpptype(arg.annotation) for arg in args]
        formal_args = [f"{self.pytype_to_cpptype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)

        self.ret_ann = _returns
        self.ret_cpp_type = self.pytype_to_cpptype(_returns)
        unions = ""
        if self.union_decls != {}:
            union = ""
            for decl, fields in self.union_decls.items():
                union += "union " + decl + "{\n"
                
                #Fields of union
                union += "\n".join([f"    {type} {field};" for type,field in fields.items()])

                #Constructor of union
                for type, field in fields.items():
                    union += f"    {decl}({type} _{field}) : {field}(_{field})" + " {}\n"

                #Destructor of union
                union += f"    ~{decl}()"+" {}\n"
                
                #Comparison operator
                union += f"    bool operator==({decl} u2) {{\n"
                comparisons = [f"{field} == u2.{field} " for type, field in fields.items()]
                union += "        return " + "|| ".join(comparisons) + ";\n"
                union += "    }"
                union += "\n};\n"
            unions += union
            
        return f"{self.module_imports()}{unions}{CPP_description}{self.ret_cpp_type} {name}({formal_arg_list})" + " {\n"
    
    def wrap_in_brackets(self, s: str) -> str:
        '''Helper function to add brackets '()' around a string
        '''
        return f"({s})"

    def update_type(self, right: Tuple[ast.Expr, str], expected_type: Tuple[str]) -> str:
        '''Update type of the right expression if it is different from the
            expected type function
        '''
        
        if self.pytype_to_cpptype(right[1]) == expected_type:
            return self.wrap_in_brackets(right[0])
        
        #No need to replace std::make_tuple
        if right[0].find('std::make_tuple') == 0:
            return right[0] 

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
    
    def module_imports(self) -> str:
        return "\n".join([
            "#include<assert.h>",
            #Include every C++ header, works with g++
            "#include<bits/stdc++.h>",
            ""
        ])

    def test_suite_suffix_lines(self) -> List[str]:
        '''Add an empty curly brace
        '''
        return ["}"]

    def deep_equality(self, left: Tuple[str, ast.Expr], right: Tuple[str, ast.Expr]) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        In C++ using == checks for structural equality
        """
        right = self.update_type(right, self.ret_cpp_type)
        #Empty the union declarations
        self.union_decls = {}
        return f"    assert({left[0]} == {right});"

    def gen_literal(self, c: bool | str | int | float | None) -> Tuple[str, ast.Name]:
        """Translate a literal expression
        c: is the literal value
        """
        #Literal are the bottom of expr tree
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

    def gen_var(self, v: str) -> Tuple[str, None]:
        """Translate a variable with name v."""
        
        if v in self.cpp_keywords:
            #Add _ around keyword
            return "_"+v+"_", None
        return v, None

    def gen_list(self, l: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.List]:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """
        #Assuming all elements in list have same type
        if l == [] or l == ():
          return "std::vector<long>()", ast.List([ast.Name("int")])

        elem_type = self.pytype_to_cpptype(l[0][1])
        return self.list_type%elem_type + "({" + ", ".join([e[0] for e in l]) + "})", ast.List([l[0][1]])

    def gen_tuple(self, t: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.Tuple]:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to make_tuple<?>{ x, y, z }
        """
        if t == [] or t == ():
            #Empty Tuple is at the bottom of expr tree
            return "std::tuple<long>()", ast.Tuple([ast.Name("int")])

        #If there is none then add std::optional<?>
        contains_none = "{}" in ", ".join([e[0] for e in t])
        if contains_none:
            #Find type of other element and make all std::optional
            other_types = []
            for e in t:
                if self.pytype_to_cpptype(e[1]) != "{}":
                    other_types += [self.pytype_to_cpptype(e[1])]
            if len(other_types) > 1:
                other_types = list(set(other_types))[0]
            else:
                #Asuming long if no other type
                other_types = "long"
            new_elem_type = f"std::optional<{other_types}>"

            return "std::make_tuple(" + ", ".join([f"{new_elem_type}({e[0]})" for e in t]) + ")", \
                ast.Tuple([e[1] for e in t])

        return "std::make_tuple(" + ", ".join([e[0] for e in t]) + ")", \
            ast.Tuple([e[1] for e in t])

    def gen_dict(self, keys: List[Tuple[str, ast.Expr]], values: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.Dict]:
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

    def gen_call(self, func: str, args: List[Tuple[str, ast.Expr]]) -> Tuple[str, None]:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func[0] + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None


if __name__ == "__main__":
    translator = CPPTranslator("cpp")
    main(translator)
