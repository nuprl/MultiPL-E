import re
import ast
from typing import List
from types import NoneType

docstring_linestart_re = re.compile("""\n(\s+)*""")

class Translator:
    '''Translate Python to Lean.
    '''

    stop = ["\n//", "\n/*", "\nfunction", "\nmethod", "\ntheorem", "\nlemma", "\nprotected def", "\ndef"]

    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        lean_description = "/-\n" + description + "\n-/\n"
        self.fn_name = name
        self.type = [[arg.annotation for arg in args], returns]

        def translate_arg(arg):
            ty = " : " + self.pytype_to_leantype(arg.annotation)
            return "(" + arg.arg + ty + ")"

        lean_args = " ".join(map(str,[translate_arg(arg) for arg in args]))
        lean_ret = self.pytype_to_leantype(returns)

        return f"{lean_description}def {name} {lean_args} : {lean_ret} :=\n"

    def pytype_to_leantype(self, ann: ast.expr | None) -> str:
        """
        Traverses AST and translates Python type annotation to Lean type annotation
        """

        if ann == None : raise Exception(f"No annotation")

        match ann:
            # Subscripts
            case ast.Subscript(ast.Name(id), slice, ctx):
                match id:
                    case "List":
                        return "list " + self.pytype_to_leantype(slice)
                    case "Union":
                        raise Exception("Lean has no support for untagged unions.")
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.pytype_to_leantype(elem) for elem in elts]
                                return f"({' × '.join(tys)})"
                            case other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        raise Exception("Lean has no support for dictionaries. Yikes.")
                    case "Optional":
                        return "Option " + self.pytype_to_leantype(slice)
                    case other:
                        raise Exception(f"Bad generic {other}")

            # Literals
            case ast.Name(id="str") | "str":
                return "String"
            case ast.Name(id="int") | "int":
                return "Int"
            case ast.Name(id="float") | "float":
                raise Exception("Lean does not have inherent support for Reals (you need mathlib).")
            case ast.Name(id="bool") | "bool":
                return "Bool"
            case ast.Name(id="None") | "None":
                raise Exception("Lean does not have type None")

            # Misc
            case None:
                raise Exception("Implicitly untyped argument None")
            case ast.Name("Any"):
                raise Exception("Lean does not have Any")
            case ast.Name(x):
                raise Exception(f"Unknown name {x}")
            case ast.Constant(Ellipsis):
                raise Exception("No ellipsis!")
            case _other:
                raise Exception(f"Unknown annotation: {ann}")

    def __init__(self):
        self.type = None

    def file_ext(self):
        return "lean"

    def deep_equality(self, left, right):
        """
        In Lean we acheive the notion of "deeper equality" via the reflexivity tactic 
        and the type equivalence-checking "=" rather than programmically via "=="

        if we *were* to do it programmically, you'd have something like:

        def main : IO Unit :=
          if [assertion here] then pure () else throw (IO.userError "assertion error")

        and, we'd run 
        $ lean --run file.lean

        (also note, the "pure ()" business is via the IO monad in Lean)
        """
        return f"example: {left} = {right} := by rfl"

    def test_suite_prefix_lines(self, _):
        return []

    def test_suite_suffix_lines(self):
        return []

    def gen_list(self, elements: List[str]):
        return f"[{', '.join(elements)}]"

    def gen_tuple(self, elements: List[str]):
        return f"({' × '.join(elements)})"

    # TODO: I think this is fine for the most part... need to verify
    def gen_literal(self, c: bool | str | int | float | None):
        return repr(c)

    def gen_var(self, name: str):
        return name

    def gen_call(self, func: str, args: List[str]):
        #    args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return self.fn_name + " " + " ".join(map(str,args))
    
