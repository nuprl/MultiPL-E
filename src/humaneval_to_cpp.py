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
    stop = ["\n}"]

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
        #C++ Keywords found in the dataset as variable and their idiomatic replacement
        self.keywords = {"operator": "op"}
        self.make_tuple = "std::make_tuple"

    def gen_make_list(self, elem_type, list_literal):
        return self.list_type%elem_type + "(" + list_literal + ")"
    
    def gen_make_tuple(self, elems):
        return "std::make_tuple("+elems+")"

    def gen_array_literal(self, list_contents):
        return "{" + list_contents + "}"

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

    def find_type_to_coerce(self, expr):
        '''
        '''

        return re.findall(".+\(", expr)

    def update_type(self, right: Tuple[ast.Expr, str], expected_type: Tuple[str]) -> str:
        '''Coerce type of the right expression if it is different from the
            expected type function
        '''

        if self.pytype_to_cpptype(right[1]) == expected_type:
            return self.wrap_in_brackets(right[0])
        
        #No need to replace std::make_tuple
        if right[0].find(self.make_tuple) == 0:
            return right[0] 
        
        #No need to replace empty optional
        if right[0].find("Optional.empty()") == 0:
            return right[0]

        if expected_type.find("Optional") != -1:
            #Have to do this because Java does Optional.of and C++ have std::optional
            return f"{self.make_optional('')}({right[0]})"
        
        type_to_coerce = self.find_type_to_coerce(right[0])
        coerced_type = None
        if type_to_coerce == []:
            #No type? add the type of right
            coerced_type = expected_type+"("+right[0]+")"
        else:
            type_to_coerce = type_to_coerce[0]
            coerced_type = right[0].replace(type_to_coerce, expected_type+"(")
        
        ##Remove extra brackets
        print(coerced_type)
        coerced_type = coerced_type.replace('(())', '()')
        return self.wrap_in_brackets(coerced_type)


    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "}",
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
        return ["}\n"]

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
            return f'"{c}"'.replace("\n","\\n"), ast.Name("str")
        if type(c) == int:
            return repr(c), ast.Name("int")
        if type(c) == float:
            return repr(c), ast.Name("float")
        #It appears None occurs for only optional
        return self.none_type, ast.Name("None")

    def gen_var(self, v: str) -> Tuple[str, None]:
        """Translate a variable with name v."""
        
        if v in self.keywords:
            #Add _ around keyword
            return self.keywords[v], None
        return v, None

    def gen_list(self, l: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.List]:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """

        if l == [] or l == ():
          return self.gen_make_list(self.int_type, ""), ast.List([ast.Name("int")])
        
        #Go through all types of list and prefer the bigger type        
        elem_type = self.pytype_to_cpptype(l[0][1])
        list_literal = self.gen_array_literal(", ".join([f"({elem_type}){e[0]}" for e in l]))
        return self.gen_make_list(elem_type, list_literal), ast.List([l[0][1]])
    
    def make_optional_type(self, types):
        return self.optional_type % types

    def make_optional(self, types):
        return self.optional_type % types

    def gen_tuple(self, t: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.Tuple]:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to make_tuple{ x, y, z }
        """
        if t == [] or t == ():
            #Empty Tuple is at the bottom of expr tree
            return self.tuple_type%"long", ast.Tuple([ast.Name("int")])

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
                other_types = self.int_type
            new_elem_type = self.make_optional(other_types)

            return self.gen_make_tuple(", ".join([f"{new_elem_type}({e[0]})" for e in t])), \
                ast.Tuple([e[1] for e in t])

        return self.make_tuple(", ".join([e[0] for e in t])), \
            ast.Tuple([e[1] for e in t])

    def make_map_literal(self, keys, values):
        return "{" + ", ".join(f"{{{k}, {v}}}" for k, v in zip(keys, values)) + "}"

    def make_map(self, dict_type, map_literal):
        cpp_type = self.pytype_to_cpptype(dict_type)
        return f"{cpp_type}({map_literal})"

    def gen_dict(self, keys: List[Tuple[str, ast.Expr]], values: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.Dict]:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to map<?,?>{ ["key1"] = val1, ["key2"] = val2 }
        """
        if keys == [] and values == []:
            dict_type = ast.Dict(ast.Name("None"), ast.Name("None"))
            cpp_type = self.pytype_to_cpptype(dict_type)
            return self.make_map(dict_type, ""), dict_type
        
        #Assuming all keys and values have same type
        keys_type = keys[0][1]
        values_type = values[0][1]
        keys = [k[0] for k in keys]
        values = [v[0] for v in values]
        
        dict_type = ast.Dict(keys_type, values_type)
        map_literal = self.make_map_literal(keys, values)
        return self.make_map(dict_type, map_literal), dict_type

    def gen_call(self, func: str, args: List[Tuple[str, ast.Expr]]) -> Tuple[str, None]:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        return func[0] + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None


if __name__ == "__main__":
    translator = CPPTranslator("cpp")
    main(translator)
