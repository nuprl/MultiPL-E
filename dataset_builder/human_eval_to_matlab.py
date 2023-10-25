from typing import Tuple, List, TypeVar, Generic
import ast
import re

DOCSTRING_LINESTART_RE = re.compile("""\n(\\s*)""")
class Translator:
    '''
    Matlab translator
    '''
    stop = ["\nend"]
    def coerce_vector(self, expr, eltype):
        match eltype:
            case ast.Subscript(ast.Name("Union"), _, _):
                return "{" + expr[1:-1] + "}"
            case ast.Subscript(ast.Name("Optional"), _, _):
                return "{" + expr[1:-1] + "}"
            case ast.Name("Any"):
                return "{" + expr[1:-1] + "}"
            case _ :
                return expr
    def coerce_dict(self, expr, vtype):
        return expr

        
    def coerce(self, expr, type):
        match expr, type:
            case expr, ast.Subscript(ast.Name("List"), sub):
                return self.coerce_vector(expr, sub)
            case expr, ast.Subscript(ast.Name("Tuple"), sub):
                return self.coerce_vector(expr, sub)
            case expr, ast.Subscript(ast.Name("Dict"), ast.Tuple([_, v])):
                return self.coerce_dict(expr, v)
            case _:
                return expr
    def __init__(self):
        self.type = None
    
    def file_ext(self):
        return "m"
        
    def gen_literal(self, c: bool | str | int | float | None):
        if type(c) == bool: 
            return str(c).lower()
        elif type(c) == str: 
            return f'"{c}"'
        elif c is None:
            return "string(missing)"
        else: 
            return repr(c)


    def gen_var(self, v: str):
        """
        Translate a variable with name v.
        """
        return v

    def gen_list(self, l):
        """
        Translate a list with elements l
        """
        return "[" + ",".join(l) + "]"

    def gen_tuple(self, t):
        """
        Translate a tuple with elements t
        """
        return "[" + ",".join(t) + "]"

    def gen_dict(self, keys, values):
        """
        Translate a dictionary with keys and values
        """
        # TODO: specialize on the fact that it may have to be a cell 
        # dict 
        args = ",".join([f"{k},{v}" for k, v in zip(keys, values)])
        return f"dictionary({args})"

    def gen_call(self, func, args):
        """
        Translate a function call `func(args)`
        """
        cargs = [self.coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return f"{func}({','.join(cargs)})"

    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        """
        Translate Python prompt.
        """
        self.type = [[arg.annotation for arg in args], returns]
        fn_header = f"function res = {name}({','.join([arg.arg for arg in args])})"
        doc_comment = "% " + re.sub(DOCSTRING_LINESTART_RE, "\n% ", description.strip()) + "\n"
        res = f"{doc_comment}\n{fn_header}"
        return res

    def test_suite_prefix_lines(self, entry_point: str) -> List[str]:
        """
        This code goes at the start of the test suite.
        The entry_point is ???
        """
        return ["end", "", "function ans = test()", f"candidate = @{entry_point};"]
 
    def test_suite_suffix_lines(self) -> List[str]:
        """
        This code goes at the end of the test suite.
        """
        return ["end"]

    def deep_equality(self, left, right) -> str:
        """
        All tests are assertions that compare deep equality between left and right.
        """
        return f"  assert(isequaln({left},{right}));"
        


    def no_completion_prompt_stub(self) -> str:
        """
        A default stub to create a syntactically valid translation in case of not performing completion.
        For example, for Rust this could be:

            todo!()
        }
        
        """
        return "\nend"