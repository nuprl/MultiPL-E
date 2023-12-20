import re
import ast
from typing import List

docstring_linestart_re = re.compile("""\n(\s+)*""")

class Translator:
    '''Translate Python to Coq
    '''

    stop = ["\nFixpoint", "\nDefinition", "\nExample", "\nProof", "\nAxiom", "\n(*"]

    def translate_prompt(self, name: str, args: List[ast.arg], returns: ast.expr, description: str) -> str:
        coq_description = "(*\n" + description + "\n*)\n"            
        self.fn_name = name
        self.type = [[arg.annotation for arg in args], returns]

        prefix = "Require Import ZArith.\nRequire Import Reals.\nRequire Import Coq.Strings.String.\nOpen Scope string_scope.\n\n"

        def translate_arg(arg):
            ty = " : " + self.pytype_to_coqtype(arg.annotation)
            return "(" + arg.arg + ty + ")"

        coq_args = " ".join(map(str,[translate_arg(arg) for arg in args]))
        coq_ret = self.pytype_to_coqtype(returns)

        return f"{prefix}{coq_description}Definition {name} {coq_args} : {coq_ret} :=\n"

    def pytype_to_coqtype(self, ann: ast.expr | None) -> str:
        """
        Traverses AST and translates Python type annotation to Lean type annotation
        """

        if ann == None : raise Exception(f"No annotation")

        match ann:
            # Subscripts            
            case ast.Subscript(ast.Name(id), slice, ctx):
                match id:
                    case "List":
                        return "list " + self.pytype_to_coqtype(slice)
                    case "Union":
                        raise Exception("Coq has no support for untagged unions.")
                    case "Tuple":
                        match slice:
                            case ast.Tuple(elts, _ctx):
                                tys = [self.pytype_to_coqtype(elem) for elem in elts]
                                return f"({' × '.join(tys)})"
                            case other:
                                raise Exception(f"Bad tuple: {slice}")
                    case "Dict":
                        raise Exception("Coq has no support for dictionaries. Yikes.")
                    case "Optional":
                        return "option " + self.pytype_to_coqtype(slice)
                    case other:
                        raise Exception(f"Bad generic {other}")

                        # Literals
            case ast.Name(id="str") | "str":
                return "string"
            case ast.Name(id="int") | "int":
                return "Z"
            case ast.Name(id="float") | "float":
                return "R"
            case ast.Name(id="bool") | "bool":
                return "bool"
            case ast.Name(id="None") | "None":
                raise Exception("Coq does not have type None")

            # Misc
            case None:
                raise Exception("Implicitly untyped argument None")
            case ast.Name("Any"):
                raise Exception("Coq does not have Any")
            case ast.Name(x):
                raise Exception(f"Unknown name {x}")
            case ast.Constant(Ellipsis):
                raise Exception("No ellipsis!")
            case _other:
                raise Exception(f"Unknown annotation: {ann}")

    def test_suite_prefix_lines(self, _):
        return []

    def test_suite_suffix_lines(self):
        return []

    def file_ext(self):
        return "v"

    def __init__(self):
        self.type = None
        self.testnum = 0

    def deep_equality(self, left, right):
        """
        we use the reflexivity tactic to ensure type equivalence. 
        Similar to Lean. See humaneval_to_lean for more.
        """
        self.testnum+=1
        return f"Example t{self.testnum} : {left} = {right}. Proof. reflexivity. Qed."

    def gen_var(self, name: str):
        return name

    # TODO: find some better alternative to define arbitrarily typed list in single line
    def gen_list(self, elements: List[str]):
        return "(cons " + " (cons ".join(map(str,elements)) + " nil" + ")"*(len(elements) + 1)

    def gen_tuple(self, elements: List[str]):
        return f"({' × '.join(elements)})"

    def gen_literal(self, c: bool | str | int | float | None):
        # switch doesn't work here for some reason xd idk python well enough
        if type(c) == bool:
            return str(c)
        if type(c) == str:
            return f'"{c}"'
        if type(c) == int:
            return f"{c}%Z"
        if type(c) == float:
            return f"{c}%R"

        return "Nothing"

    def gen_call(self, func: str, args: List[str]):
        #args = [coerce(arg, self.type[0][i]) for i, arg in enumerate(args)]
        return self.fn_name + " " + " ".join(map(str,args))
