# This script translates problems from the OpenAI HumanEval dataset into R.
import ast
import re
from typing import List

DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

needs_hashmap = False
basic = ["number","string","boolean"]

def translate_type(t):
    global needs_hashmap
    match t:
        case ast.Subscript(ast.Name(id), slice, ctx):
            match id:
                case "List":
                    if translate_type(slice) not in basic:
                        return "complex"
                    return "list"
                case "Union":
                    return "union"
                case "Tuple":
                    return "tuple"
                case "Dict":
                    return "dict"
                case "Optional":
                    return "undefined"
                case other:
                    raise Exception(f"Bad generic {other}")
        case ast.Name("int") | "int":
            return "number"
        case ast.Name("float"):
            return "number"
        case ast.Name("bool"):
            return "boolean"
        case ast.Name("str") | "str":
            return "string"
        case None:
            return "no type"
        case ast.Name("Any"):
            return "any"
        case ast.Name(x):
            raise Exception(f"unknown name {x}")
        case ast.Constant(Ellipsis):
            return "ellipsis"
        case _other:
            raise Exception(f"unknown annotation: {t}")

def coerce(expr: str, type) -> str:
    match expr, type:
        case expr, ast.Subscript(ast.Name("List"), sub):
            if "id" not in sub._fields:
                #print(expr,sub)
                return expr
            elif "complex" in sub.id or "Any" in sub.id:
                return expr
            #print("FOUND VECTOR",expr)
            return coerce_to_vector(expr)
        case _:
            return expr
def coerce_to_vector(expr):
    return 'c('+'('.join(expr.split('(')[1:]) 

class Translator:
    '''R Translator
    '''

    stop = [ '\n#', '\n```']

    def file_ext(self):
        return "r"

    def __init__(self):
        global needs_hashmap
        self.type = None

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        global needs_hashmap
        r_description = (
            "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        )
        needs_hashmap = False
        self.type = [[arg.annotation for arg in args], returns]
        
        arg_names = [arg.arg for arg in args]
        arg_list = ", ".join(arg_names)
        return f"{r_description}{name} <- function({arg_list})" + ' {'

    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        """
        This code goes at the start of the test suite.
        """
        return [
            "test_humaneval <- function() {",
            f"candidate <- {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}", "test_humaneval()"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "    if(!identical({}, {}))".format(left, right) + "{quit('no', 1)}"

    def gen_literal(self, c):
        ''' Translate a literal expression
            c: is the literal value
        '''
        if type(c) == bool:
            return 'TRUE' if c else 'FALSE'
        elif c is None:
            return 'NULL'
        return repr(c)
    
    def gen_var(self, v):
        '''Translate a variable with name v.
        '''
        return v
    
    
    def gen_list(self, l):
        '''Translate a list with elements l
           A list [ x, y, z ] translates to list(x, y, z)
        '''
        #if len(set(types)) <= 1:
        #    return "c(" + ", ".join(l) + ")"
        return "list(" + ", ".join(l) + ")"
   
    #there are no r tuples, but r lists are mostly immutable?
    def gen_tuple(self, t):
        '''Translate a tuple with elements t
           A tuple (x, y, z) translates to list(x, y, z) }
        '''
        #if len(set(types)) <= 1:
        #    return "c(" + ", ".join(t) + ")"
        return "list(" + ", ".join(t) + ")"
    
    def gen_dict(self, keys, values):
        '''Translate a dictionary with keys and values (uses R list with keys)
           A dictionary { "key1": val1, "key2": val2 } translates to list("key1" = val1, "key2" = val2)  
        '''
        return "list(" + ", ".join(f'{k} = {v}' for k, v in zip(keys, values)) + ")"
    
    def gen_call(self, func, args):
        '''Translate a function call `func(args)`
           A function call f(x, y, z) translates to f(x, y, z)
        '''
        args = [coerce(a,self.type[0][i]) for i,a in enumerate(args)]
        return func + "(" + ", ".join(args) + ")"
