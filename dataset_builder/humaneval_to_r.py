# This script translates problems from the OpenAI HumanEval dataset into R.
import ast
import re
from typing import List

DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

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
        self.type = None

    def translate_prompt(self, name: str, args: List[ast.arg], returns, description: str) -> str:
        r_description = (
            "# " + re.sub(DOCSTRING_LINESTART_RE, "\n# ", description.strip()) + "\n"
        )
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
            f"    candidate <- {entry_point}",
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["}", "test_humaneval()"]

    def deep_equality(self, left: str, right: str) -> str:
        """
        All tests are assertions that compare deep equality between left and right.

        Make sure you use the right equality operator for your language. For example,
        == is the wrong operator for Java and OCaml.
        """
        return "    stopifnot(isTRUE(all.equal({}, {})))".format(left, right)

    def gen_literal(self, c):
        ''' Translate a literal expression
            c: is the literal value
        '''
        if type(c) == bool:
            return 'TRUE' if c else 'FALSE'
        elif c is None:
            # Note: Python's None is equivalent to R's NA or NULL, depending
            # on how it's used. NULL is more appropriate for empty lists,
            # but something like a tuple of Nones (None, None) would be more
            # idiomatic as c(NA, NA) in R.
            return 'NULL'
        return repr(c)
    
    def gen_var(self, v):
        '''Translate a variable with name v.
        '''
        return v

    def _get_r_type(self, e:str):
        if e.startswith("c("):
            return "vector"
        elif e.startswith("list("):
            return "list"
        elif e == "NULL":
            return "null"
        elif e == "TRUE" or e == "FALSE":
            return "boolean"
        else:
            # https://stackoverflow.com/questions/354038/how-do-i-check-if-a-string-represents-a-number-float-or-int
            return "numeric" if e.replace("-","",1).replace('.','',1).isdigit() else "string"

    def is_atomic(self, l):
        '''inputs are all strings, but we need to determine what type they are in R
        '''
        type_set = set([self._get_r_type(e) for e in l])
        if "null" in type_set or "vector" in type_set or "list" in type_set:
            return False
        return len(type_set) <= 1
    
    def gen_list(self, l):
        '''
        Translate a list with elements l
        A list [ x, y, z ] translates to:
        - c(x, y, z) if x, y, and z have the same type
        - list(x, y, z) otherwise
        '''
        if self.is_atomic(l):
           return "c(" + ", ".join(l) + ")"
        return "list(" + ", ".join(l) + ")"
   
    #there are no r tuples, but r lists are mostly immutable?
    def gen_tuple(self, t):
        '''
        Translate a tuple with elements t
        A tuple (x, y, z) translates to:
        - c(x, y, z) if x, y, and z have the same type
        - list(x, y, z) otherwise
        '''
        if self.is_atomic(t):
           return "c(" + ", ".join(t) + ")"
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
