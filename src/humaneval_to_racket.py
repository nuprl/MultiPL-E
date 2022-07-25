# Authored by Carolyn Anderson, based on script by Arjun Guha.
#
# This script translates problems from the OpenAI HumanEval dataset into Racket.
import json
import os
import ast
import re
from completion import completion
from pathlib import Path

def expr_to_racket(py_expr: ast.AST):
    """
    Translates a Python expression to Racket.
    - Strings and numbers are quoted.
    - Booleans are lowercased.
    - Variables translate trivially (we print them as themselves)
    - An array [ x, y, z] translates to '(x y z)
    - A tuple (x, y, z) translates to '(x y z)
    - A dictionary { "key1": val1, "key2": val2 } translates to '#hash(("key1" . 1) ("key2" . 2))
    - A function call f(x, y, z) translates to (f x y z)
    """
    match py_expr:
        case ast.Constant(value=s) if type(s) in [str, int, float]:
            return s.__repr__()
        case ast.Constant(value=s) if type(s) == bool:
            return "#t" if s else "#f"
        case ast.UnaryOp(op=ast.USub(), operand=ast.Constant(value=n)) if type(n) in [int, float]:
            return (-n).__repr__()
        case ast.Name(id):
            return id
        case ast.List(elts=elts):
            return "'(" + " ".join(expr_to_racket(e) for e in elts) + ")"
        case ast.Tuple(elts=elts):
            return "'(" + " ".join(expr_to_racket(e) for e in elts) + ")"
        case ast.Dict(keys=keys, values=values):
            return "'#hash(" + " ".join(f"({k} .  {expr_to_racket(v)})" for k, v in zip(keys, values)) + ")"
        case ast.Call(func, args):
            return '(' + expr_to_racket(func) + " " + " ".join(expr_to_racket(a) for a in args) + ")"
        case _other:
            print("OMFG" + py_expr.value)
            raise Exception(f"Unhandled expression: {py_expr}")


DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class PromptVisitor(ast.NodeVisitor):
    """Helper for prompt_to_python"""
    def __init__(self):
        super().__init__()
        self.state = "start"

    def visit_FunctionDef(self, node: ast.FunctionDef):
        if self.state != "start":
            self.state = "error"
            return

        self.name = node.name
        self.arg_names = [ arg.arg for arg in node.args.args ]

        match node.body:
            case [ ast.Expr(value=ast.Constant(s)), ast.Pass() ] if type(s) == str:
                self.description = s
                self.state = "complete"
            case _other:
                self.state = "error"

    def racket_function_decl(self) -> str|None:
        if self.state != "complete":
            return None
        args = " ".join(self.arg_names)
        racket_description = "#lang racket\n#| " + re.sub(DOCSTRING_LINESTART_RE, "\n ", self.description.strip()) + "|#\n"

        return f"{racket_description}(define ({self.name} {args})\n"


def prompt_to_racket(py_prompt: str, filename: str) -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Racket. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    prompt_ast = ast.parse(py_prompt + "    pass", filename)
    prompt_visitor = PromptVisitor()
    prompt_visitor.visit(prompt_ast)
    return prompt_visitor.racket_function_decl()

def tests_to_racket(py_tests: str, entry_point: str, filename: str) -> str:
    """
    Translates a suite of tests from the HumanEval dataset to Racket. Expects the code to look like:

    METADATA = ... <-- optional

    def check():
        assert(LHS == RHS)
        ...

    produces

    (require rackunit)

    (define (test-humaneval)
        (check-equal? LHS RHS))

    (test-humaneval)
    """
    tests_ast = ast.parse(py_tests, filename)
    test_cases = [ "(require rackunit)", "", "(define (test-humaneval) (" ]
    match tests_ast:
        case ast.Module(body=[ast.FunctionDef(body=body)]):
            body_ast = body
        case ast.Module(body=[ast.Assign(), ast.FunctionDef(body=body)]):
            body_ast = body
        case _other:
            return None
    for item_ast in body_ast:
        match item_ast:
            case ast.Assert(test=ast.Constant()):
                # Skips assert True
                pass
            case ast.Assert(test=ast.Compare(left=left, ops=[ast.Eq()], comparators=[right])):
                try:
                    test_cases.append("    (check-equal? {} {})".format(expr_to_racket(left), expr_to_racket(right)))
                except Exception as e:
                    print(f"Exception translating expressions for {filename}: {e}")
                    return None
            case _other:
                print(f"In tests for {filename}: {item_ast}")
                return None
    test_cases.append("))")
    test_cases.append("")
    test_cases.append("(test-humaneval)") 
    return "\n".join(test_cases)

def is_file_complete(path):
    with open(path) as f:
        for line in f:
            if line.startswith("os.exit(lu.LuaUnit.run())"): #how do I change this?
                return True
    return False


def process_file(file):
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)

    filename = (
        "racket_humaneval/test_" + cleaned_task_id + f"_{entry_point}.rkt"
    )

    if os.path.exists(filename) and is_file_complete(filename):
        return

    reading_prompt = True
    reading_tests = False
    prompt_buffer = []
    tests_buffer = []

    with open(file) as f:
        for line in f:
            if "### Canonical solution below ###" in line:
                reading_prompt = False
            if "### Unit tests below ###" in line:
                reading_tests = True
                continue
            if "def test_check():" in line:
                break

            if reading_prompt:
                prompt_buffer.append(line)
            if reading_tests:
                tests_buffer.append(line)

    prompt = "".join(prompt_buffer)
    racket_prompt = prompt_to_racket(prompt, f"{cleaned_task_id}.py")

    tests = "".join(tests_buffer)
    racket_tests = tests_to_racket(tests, entry_point, f"{cleaned_task_id}.py")

    if racket_prompt is None:
        print(f"Failed to translate prompt for {filename}")
        return
    if racket_tests is None:
        print(f"Failed to translate tests for {filename}")
        return
    with open(filename, "w") as f:
        f.write(racket_prompt)
        response = completion(
            engine="code-davinci-001",
            # Settings from the Codex paper
            prompt=racket_prompt,
            max_tokens=500,
            temperature=0.2,
            top_p=0.95,
            # NOTE(arjun): Seems like reasonable stop sequences for Lua
            stop=[ '\nlocal', '\nfunction', '\n--', '\n\n' ],
            n=1,
        )
        f.write(response[0])
        f.write("\n;; Unit tests below\n\n")
        f.write(racket_tests)


def main():
    directory = Path("datasets").resolve()
    for file in sorted(directory.glob("*.py")):
        process_file(file)

if __name__ == "__main__":
    main()
