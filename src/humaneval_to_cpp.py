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


# class AnnotationVisitor(ast.NodeVisitor):
#     def __init__(self, level,*args, **kwargs):
#         super().__init__(*args, **kwargs)
#         self.level = level
    
#     def generic_visit(self):

    

#TODO: Set annotations 

class CPPTranslator:
    '''Translate Python to C++.
       Each method returns a tuple of code and type of the expression
    '''

    #Seems like reasonable stop sequences for CPP
    stop = ["\n\n","\nvoid", "\nint", "\nbool"]
    #C++ Keywords found in the dataset
    cpp_keywords = ["operator"]

    def __init__(self, file_ext):
        self.file_ext = file_ext
        self.union_decls = {} #Dictionary of _union_name to a dictionary of type to field

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
            case ast.Subscript(value=ast.Name(id="Union"), slice=ast.Tuple(elts=elems)):
                print(ast.dump(ann))
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
        # print (unions)
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
    
    def wrap_in_brackets(self, s):
        return f"({s})"

    def update_type(self, right, expected_type):
        '''Update type of the right expression if it is different from the
            return type of function
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
    
    def module_imports(self):
        return "\n".join([
            "#include<iostream>",
            "#include<vector>",
            "#include<string>",
            "#include<map>",
            "#include<optional>",
            "#include<assert.h>",
            "#include<bits/stdc++.h>",
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
        right = self.update_type(right, self.ret_cpp_type)
        #Empty the union declarations
        self.union_decls = {}
        return f"    assert({left[0]} == {right});"

    # NOTE(arjun): Really, no Nones?
    def gen_literal(self, c: bool | str | int | float | None):
        """Translate a literal expression
        c: is the literal value
        """
        #Literal are the bottom of expr tree
        if type(c) == bool:
            return str(c).lower(), ast.Name("bool"), 0
        if type(c) == str:
            return f'"{c}"', ast.Name("str"), 0
        if type(c) == int:
            return repr(c), ast.Name("int"), 0
        if type(c) == float:
            return repr(c), ast.Name("float"), 0
        #It appears None occurs for only optional
        return "{}", ast.Name("None"), 0

    def gen_var(self, v: str) -> str:
        """Translate a variable with name v."""
        
        #Variables do not occur in expr tree
        if v in self.cpp_keywords:
            return "_"+v+"_", None, -1
        return v, None, -1

    def gen_list(self, l: List[str]) -> str:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """
        #Assuming all elements in list have same type
        if l == [] or l == ():
          return "std::vector<long>()", ast.List([ast.Name("int")])

        elem_type = self.pytype_to_cpptype(l[0][1])
        return f"std::vector<{elem_type}>" + "({" + ", ".join([e[0] for e in l]) + "})", ast.List([l[0][1]])

    def max_type_ann_level(self, type_ann, curr_level):
        max_level = curr_level

        match type_ann:
            case ast.Subscript(value=v, slice=s):
                #Visit only slice in Subscript because value defines the parent type
                max_level = max(max_level, self.max_type_ann_level(s, curr_level+1))
            case ast.Tuple(elts=elts):
                #Do not increase level in Tuple because Subscript already increased the level
                for elt in elts:
                    max_level = max(max_level, self.max_type_ann_level(elt, curr_level))
            case _other:
                for child in ast.iter_child_nodes(type_ann):
                    if type(child) is ast.Load:
                        continue
                    max_level = max(max_level, self.max_type_ann_level(child, curr_level+1))

        return max_level

    def type_at_level(self, nodes_found, type_ann, curr_level, level):        

        match type_ann:
            case ast.Subscript(value=v, slice=s):
                #Visit only slice in Subscript because value defines the parent type
                if curr_level == level:
                    nodes_found += [type_ann]
                self.type_at_level(nodes_found, s, curr_level+1, level)
            case ast.Tuple(elts=elts):
                #Do not increase level in Tuple because Subscript already increased the level
                for elt in elts:
                    self.type_at_level(nodes_found, elt, curr_level, level)
            case _other:
                if curr_level == level:
                    nodes_found += [type_ann]
                for child in ast.iter_child_nodes(type_ann):
                    if type(child) is ast.Load:
                        continue
                    self.type_at_level(nodes_found, child, curr_level+1, level)

        return nodes_found

    def gen_tuple(self, t: List[str]) -> str:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to make_tuple<?>{ x, y, z }
        """
        if t == [] or t == ():
            #Empty Tuple is at the bottom of expr tree
            return "std::tuple<int>()", ast.Tuple([ast.Name("int")]), 0
        
        assert len(set([e[2] for e in t])) == 1, "All elements of tuple should be on same level"
        #For each element find the return type at that level in self.return_ann
        elem_level = t[0][2]
        
        max_level = self.max_type_ann_level(self.ret_ann, 0)
        print(max_level, ast.dump(self.ret_ann))
        tuple_level = max_level - elem_level
        #Find the type ann node in the return Type Ann Tree which represents this tuple
        #Go above the level of tuple elements and find the first Subscript node with Tuple
        while tuple_level >= 0:
            type_nodes_found = []
            self.type_at_level(type_nodes_found, self.ret_ann, 0, tuple_level)
            found_tuple = False
            for n in type_nodes_found:
                match n:
                    case ast.Subscript(value=ast.Name("Tuple")):
                        found_tuple = True
                    case _other:
                        continue
            if found_tuple: 
                break
            tuple_level -= 1
        # print(tuple_level, self.type_at_level(type_nodes_found, self.ret_ann, 0, tuple_level))
        # print([ast.dump(tt) for tt in e_type], level)
        if found_tuple:
            tuple_node = set(type_nodes_found)
            assert len(tuple_node) == 1, "There should only be one tuple node"
            tuple_node = list(tuple_node)[0]
            # print(found_tuple, t[0][0], ast.dump(t[0][1]), t[1][0], ast.dump(t[1][1]), elem_level)
            # print(self.pytype_to_cpptype(tuple_node))
            # print(ast.dump(tuple_node))

            cpp_elements = []
            assert len(tuple_node.slice.elts) == len(t), "Tuple elements are different"
            for i in range(len(t)):
                cpp_elem_type = self.pytype_to_cpptype(tuple_node.slice.elts[i])
                cpp_elements += [cpp_elem_type + "(" + t[i][0] + ")"]
            
            return "std::make_tuple(" + ", ".join(cpp_elements) + ")", \
                ast.Tuple([e[1] for e in t])
        else:
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
