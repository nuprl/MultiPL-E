# This script translates problems from the OpenAI HumanEval dataset into CPP.
import re
import ast
from typing import List, Dict, Tuple

# We turn multi-line docstrings into single-line comments. This captures the
# start of the line.
DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")

class Translator:
    '''Translate Python to C++.
       Each method returns a tuple of code and type of the expression
    '''

    #Seems like reasonable stop sequences for C++
    stop = ["\n}"]

    def __init__(self):
        '''Initializes C++ corresponding types.
            str -> std::string
            int -> long
            float -> float
            bool -> bool
            None -> std::nullopt (None only appears in optional)
            
            List -> std::vector
            Tuple -> std::tuple
            Dict -> std::map
            Optional -> std::optional
            Union -> Create a new Union type
            Any -> std::any
        '''
        #Dictionary of union name to a dictionary of type to field
        self.union_decls = {}
        self.string_type = "std::string"
        self.float_type = "float"
        self.int_type = "long"
        self.bool_type = "bool"
        self.none_type = "std::nullopt"
        self.list_type = "std::vector<%s>"
        self.tuple_type = "std::tuple"
        self.dict_type = "std::map"
        self.optional_type = "std::optional"
        self.any_type = "std::any"
        #A special case when Tuple has Ellipsis then always generate list instead of tuples
        self.tuple_has_ellipsis = False 
        #C++ Keywords found in the dataset as variable and their idiomatic replacement
        self.keywords = {"operator": "op", "strlen" : "string_length"}
        self.make_tuple = "std::make_tuple"

    def file_ext(self):
        return "cpp"

    def gen_make_list(self, elem_type, list_literal):
        return self.list_type%elem_type + "(" + list_literal + ")"
    
    def gen_make_tuple(self, elems):
        return self.make_tuple+"("+elems+")"

    def gen_array_literal(self, list_contents):
        return "{" + list_contents + "}"

    def gen_union(self, elems):
        union_elems_types = []
        union_decl = {}
        for i,e in enumerate(elems):
            elem_type = e
            union_elems_types += [elem_type]
            union_decl[elem_type] = f"f{i}" 
        union_name = ("Union_%s"%("_".join(union_elems_types))).replace("::", "_").replace("<", "_").replace(">", "_")
        if union_name not in self.union_decls:
            self.union_decls[union_name] = union_decl
        return union_name

    def translate_pytype(self, ann: ast.expr | None) -> str:
        '''Traverses an AST annotation and translate Python type annotation to C++ Type
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
                return self.gen_list_type(self.translate_pytype(elts[0]))
            case ast.Tuple(elts=elts):
                return self.gen_tuple_type([self.translate_pytype(e) for e in elts])
            case ast.Dict(keys=k,values=v):
                return self.gen_dict_type(self.translate_pytype(k), self.translate_pytype(v))
            case ast.Subscript(value=ast.Name(id="Dict"), slice=ast.Tuple(elts=key_val_type)):
                return self.gen_dict_type(self.translate_pytype(key_val_type[0]), self.translate_pytype(key_val_type[1]))
            case ast.Subscript(value=ast.Name(id="List"), slice=elem_type):
                return self.gen_list_type(self.translate_pytype(elem_type))
            case ast.Subscript(value=ast.Name(id="Tuple"), slice=elts):
                if type(elts) is ast.Tuple:
                    #If there is an ellipsis then convert it to a List
                    for elt in elts.elts:
                        if type(elt) == ast.Constant and str(elt.value) == "Ellipsis":
                            self.tuple_has_ellipsis = True
                            return self.gen_list_type(self.translate_pytype(elts.elts[0]))
                    return self.translate_pytype(elts)
                return self.translate_pytype(elts)
            case ast.Subscript(value=ast.Name(id="Optional"), slice=elem_type):
                return self.gen_optional_type(self.translate_pytype(elem_type))
            case ast.Subscript(value=ast.Name(id="Union"), slice=ast.Tuple(elts=elems)):
                return self.gen_union([self.translate_pytype(e) for e in elems])
            case ast.Name(id="Any"):
                return self.any_type;
            case ast.Constant(value=None):
                return self.none_type
            case ast.Constant(value=Ellipsis):
                raise Exception("Translator do not support translating Ellipsis")    
                return ""
            case _other:
                print(f"Unhandled annotation: {ast.dump(ann)}")
                raise Exception(f"Unhandled annotation: {ann}")
        
    def reinit(self):
        #Reinitialize internal state for each file
        self.tuple_has_ellipsis = False
        self.union_decls = {}

    def translate_prompt(self, name: str, args: List[ast.arg], _returns, description: str) -> str:
        '''Translate Python prompt to C++.
           In addition to comments and example, the prompt contain union declarations (if there are any) 
           and include files
        '''
        comment_start = "//"
        CPP_description = (
            comment_start +" " + re.sub(DOCSTRING_LINESTART_RE, "\n" +comment_start + " ", description.strip()) + "\n"
        )
        self.reinit()
        self.args_type = [self.translate_pytype(arg.annotation) for arg in args]
        formal_args = [f"{self.translate_pytype(arg.annotation)} {self.gen_var(arg.arg)[0]}" for arg in args]
        formal_arg_list = ", ".join(formal_args)
        name = self.gen_var(name)[0]
        self.ret_ann = _returns
        self.translated_return_type = self.translate_pytype(_returns)
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
                for ty,field in fields.items():
                    union += f"    bool operator==({ty} f) {{\n"
                    union += "        return " + f"{field} == f " + ";\n"
                    union += "    }"
                union += "\n};\n"
            unions += union
            
        return f"{self.module_imports()}{unions}{CPP_description}{self.translated_return_type} {name}({formal_arg_list})" + " {\n"
    
    def gen_tuple_type(self, elem_types):
        return self.tuple_type + "<%s>" % ", ".join(elem_types)

    def gen_list_type(self, elem_type):
        return self.list_type % elem_type

    def gen_dict_type(self, ktype, vtype):
        return self.dict_type + "<%s,%s>"  % (ktype, vtype)

    def is_primitive_type(self, t):
        '''Return if a type is primitive type 
        '''
        return t in [self.float_type, self.bool_type, self.int_type]

    def wrap_in_brackets(self, s: str) -> str:
        '''Helper function to add brackets '()' around a string
        '''
        return f"({s})"

    def find_type_to_coerce(self, expr):
        '''Any `Type(' is found to coerce to a new type
        '''

        return re.findall(".+?\(", expr)

    def update_type(self, right: Tuple[str, ast.Expr], expected_type: Tuple[str]) -> str:
        '''Coerce type of the right expression if it is different from the
            expected type function
        '''

        #No need to coerce union
        if expected_type in self.union_decls:
            return right[0]

        if self.translate_pytype(right[1]) == expected_type:
            return self.wrap_in_brackets(right[0])
        
        #No need to coerce std::make_tuple
        if self.make_tuple != "" and right[0].find(self.make_tuple) == 0:
            return right[0] 
        
        #No need to coerce empty optional
        if right[0].find(self.none_type) == 0:
            return right[0]

        if expected_type.find(self.optional_type) != -1:
            return right[0] #self.gen_optional('', right[0])
        
        type_to_coerce = self.find_type_to_coerce(right[0])
        coerced_type = None
        if type_to_coerce == []:
            #No type? add the type of right
            coerced_type = expected_type+"("+right[0]+")"
        else:
            type_to_coerce = type_to_coerce[0]
            coerced_type = right[0].replace(type_to_coerce, expected_type+"(")
        
        ##Remove extra brackets
        coerced_type = coerced_type.replace('(())', '()')
        return self.wrap_in_brackets(coerced_type)


    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "}",
            "int main() {",
            f"    auto candidate = {self.gen_var(entry_point)[0]};"
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
        #Empty the union declarations
        return f"    assert({left} == {right});"

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
            return repr(c) + "f", ast.Name("float")
        #It appears None occurs for only optional
        return self.none_type, ast.Name("None")

    def gen_var(self, v: str) -> Tuple[str, None]:
        """Translate a variable with name v."""
        
        if v in self.keywords:
            #Add _ around keyword
            return self.keywords[v], None
        return v, None
    
    def gen_type_cast(self, expr, new_type, current_type):
        if self.translate_pytype(new_type) == self.any_type:
            #No casts needed if it is any_type
            return expr
        return f"({self.translate_pytype(new_type)}){expr}"

    def gen_list(self, l: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.List]:
        """Translate a list with elements l
        A list [ x, y, z] translates to vector<?>{ x, y, z }
        """

        if l == [] or l == ():
          return self.gen_make_list(self.int_type, ""), ast.List([ast.Name("int")])
        
        #Go through all types of list, if they all are different then
        elem_type = l[0][1]
        same_elem_types = True
        for e in l:
            if self.translate_pytype(elem_type) != self.translate_pytype(e[1]) and \
                not self.is_primitive_type(self.translate_pytype(e[1])):
                #Primitive type can be casted to other primitive types but not objects
                same_elem_types = False
        if not same_elem_types:
            #If all types are not same then it probably is any
            elem_type = ast.Name(id="Any")
        list_literal = self.gen_array_literal(", ".join([self.gen_type_cast(e[0], elem_type, e[1]) for e in l]))
        return self.gen_make_list(self.translate_pytype(elem_type), list_literal), ast.List([l[0][1]])
    
    def gen_optional_type(self, types):
        '''Generate C++ std::optional<T>'''
        return self.optional_type + "<%s>"%types

    def gen_optional(self, types, elem):
        '''Generate C++ std::option<T>()'''
        return self.gen_optional_type(types) + "(" + elem + ")"

    def gen_tuple(self, t: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.Tuple]:
        """Translate a tuple with elements t
        A tuple (x, y, z) translates to make_tuple{ x, y, z }
        """
        if self.tuple_has_ellipsis:
            #generate list when Tuple can be of variable type
            return self.gen_list(t)

        if t == [] or t == ():
            #Empty Tuple is at the bottom of expr tree
            return self.gen_make_tuple(""), ast.Tuple([ast.Name("int")])

        #If there is none then add std::optional<?>
        contains_none = self.none_type in ", ".join([e[0] for e in t])
        if contains_none:
            #Find type of other element and make all std::optional
            other_types = list(filter(lambda e: self.translate_pytype(e[1]) != self.none_type, t))
            if len(other_types) >= 1:
                other_types = self.translate_pytype(list(set(other_types))[0][1])

            if other_types == []:
                #Asuming long if no other type
                other_types = self.int_type
            
            return self.gen_make_tuple(", ".join([self.gen_optional(other_types, e[0]) for e in t])), \
                ast.Tuple([e[1] for e in t])

        return self.gen_make_tuple(", ".join([e[0] for e in t])), \
            ast.Tuple([e[1] for e in t])

    def gen_map_literal(self, keys, values):
        ''' Generate key-value pairs {k1, v1}, {k2, v2} ...'''
        return "{" + ", ".join(f"{{{k}, {v}}}" for k, v in zip(keys, values)) + "}"

    def gen_map(self, dict_type, map_literal):
        cpp_type = self.translate_pytype(dict_type)
        return f"{cpp_type}({map_literal})"

    def gen_dict(self, keys: List[Tuple[str, ast.Expr]], values: List[Tuple[str, ast.Expr]]) -> Tuple[str, ast.Dict]:
        """Translate a dictionary with keys and values
        A dictionary { "key1": val1, "key2": val2 } translates to map<?,?>{ ["key1"] = val1, ["key2"] = val2 }
        """
        if keys == [] and values == []:
            dict_type = ast.Dict(ast.Name("int"), ast.Name("int"))
            cpp_type = self.translate_pytype(dict_type)
            return self.gen_map(dict_type, ""), dict_type
        
        #Assuming all keys and values have same type
        keys_type = keys[0][1]
        values_type = values[0][1]
        keys = [k[0] for k in keys]
        values = [v[0] for v in values]
        
        dict_type = ast.Dict(keys_type, values_type)
        map_literal = self.gen_map_literal(keys, values)
        return self.gen_map(dict_type, map_literal), dict_type

    def gen_call(self, func: str, args: List[Tuple[str, ast.Expr]]) -> Tuple[str, None]:
        """Translate a function call `func(args)`
        A function call f(x, y, z) translates to f(x, y, z)
        """
        func_name = self.gen_var(func[0])[0]
        return func_name + "(" + ", ".join([self.update_type(args[i], self.args_type[i]) for i in range(len(args))]) + ")", None

    def finalize(self, expr, context):
        match context:
            case "lhs":
                return expr[0]
            case "rhs":
                return self.update_type(expr, self.translated_return_type)
            case _other:
                raise Exception("bad finalize context")
