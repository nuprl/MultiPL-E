'''
Authored by Molly Feldman, based on code originally written by Arjun Guha

This script translates problems from the OpenAI HumanEval dataset into Ruby.

INSTALLS REQUIRED ON VM:
sudo apt install ruby

NOTES: 
You can do dictionaries in Ruby like Python dictionaries (i.e. with : instead of =>), 
however I chose the canonical version for the mapping 

Chose arrays as the tuple equivalence

Use the Test::Unit testing framework over other potential options - seems like it works 
equivalently. Also includes a 1 as a failure return code.
'''
import os
import ast
import re
from completion import completion
from pathlib import Path

def expr_to_ruby(py_expr: ast.AST):
    """
    Translates a Python expression to Ruby.
    - Strings with both single and double quotes are supported (i.e. same as Python).
    - Ints/Floats are equivalent to Python.
    - Booleans are lowercased.
    - Variables translate trivially (we print them as themselves)
    - An array [ x, y, z] translates to [x, y, z] (it is the same)
    - A tuple (x, y, z) translates to [x, y, z] (translate to arrays, there are no built-in tuples in Ruby)
    - A dictionary { "key1": val1, "key2": val2 } translates to { "key1" => val1, "key2" => val2 }
    (Python style dictionaries DO WORK in Ruby, but choose to do this version)
    - A function call f(x, y, z) translates to the same thing f(x, y, z)

    TODO: potential additions needed are mappings for None and for binary repr
    """
    match py_expr:
        case ast.Constant(value=s) if type(s) in [str, int, float]:
            return s.__repr__()
        case ast.Constant(value=s) if type(s) == bool:
            return "true" if s else "false"
        case ast.UnaryOp(op=ast.USub(), operand=ast.Constant(value=n)) if type(n) in [int, float]:
            return (-n).__repr__()
        case ast.Name(id):
            return id
        case ast.List(elts=elts):
            return "[" + ", ".join(expr_to_ruby(e) for e in elts) + "]"
        case ast.Tuple(elts=elts):
            return "[" + ", ".join(expr_to_ruby(e) for e in elts) + "]"
        case ast.Dict(keys=keys, values=values):
            return "{" + ", ".join(f"{expr_to_ruby(k)} => {expr_to_ruby(v)}" for k, v in zip(keys, values)) + "}"
        case ast.Call(func, args):
            return expr_to_ruby(func) + "(" + ", ".join(expr_to_ruby(a) for a in args) + ")"
        case _other:
            print("OMFG" + py_expr.value)
            raise Exception(f"Unhandled expression: {py_expr}")


DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class PromptVisitor(ast.NodeVisitor):
    """Helper for prompt_to_ruby"""
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

    def ruby_function_decl(self) -> str|None:
        if self.state != "complete":
            return None
        args = ", ".join(self.arg_names)
        ruby_description = "=begin\n " + re.sub(DOCSTRING_LINESTART_RE, "\n ", self.description.strip()) + "\n=end\n"

        return f"{ruby_description}def {self.name}({args})\n"


def prompt_to_ruby(py_prompt: str, filename: str) -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Ruby. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    prompt_ast = ast.parse(py_prompt + "    pass", filename)
    prompt_visitor = PromptVisitor()
    prompt_visitor.visit(prompt_ast)
    return prompt_visitor.ruby_function_decl()

def tests_to_ruby(py_tests: str, entry_point: str, filename: str) -> str:
    """
    Translates a suite of tests from the HumanEval dataset to Ruby. Expects the code to look like:

    def check():
        assert(LHS == RHS)
        ...

    produces

    require 'test/unit'

    class TestHumanEval < Test::Unit::TestCase
        def test_entry_point
            assert_equal(entry_point(.......))
            ...
        end
    end
    """
    tests_ast = ast.parse(py_tests, filename)
    test_cases = ["require 'test/unit'", "class TestHumanEval < Test::Unit::TestCase", f"  def test_{entry_point}"]
    #f"     candidate = method(:{entry_point})" ]
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
                    finalLeft = expr_to_ruby(left).replace('candidate', entry_point) #replace candidate with function name
                    test_cases.append("     assert_equal({}, {})".format(finalLeft, expr_to_ruby(right)))
                except Exception as e:
                    print(f"Exception translating expressions for {filename}: {e}")
                    return None
            case _other:
                print(f"In tests for {filename}: {item_ast}")
                return None
    test_cases.append("  end")
    test_cases.append("end")
    test_cases.append("")
    return "\n".join(test_cases)

#TODO (Molly): not really sure this is necessary for Ruby 
def is_file_complete(path):
    with open(path) as f:
        for line in f:
            if line.startswith("Test::Unit::UI::Console::TestRunner.run(TestHumanEval)"): #this command is not necessary
                return True
    return False


def process_file(file):
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)

    filename = Path(file.parent, "..", "ruby", f"{cleaned_task_id}_{entry_point}.rb").resolve()
    filename.parent.mkdir(parents=True, exist_ok=True)

    if os.path.exists(filename): 
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
    ruby_prompt = prompt_to_ruby(prompt, f"{cleaned_task_id}.py")

    tests = "".join(tests_buffer)
    ruby_tests = tests_to_ruby(tests, entry_point, f"{cleaned_task_id}.py")

    if ruby_prompt is None:
        print(f"Failed to translate prompt for {filename}")
        return
    if ruby_tests is None:
        print(f"Failed to translate tests for {filename}")
        return
    with open(filename, "w") as f:
        f.write(ruby_prompt)
        response = completion(
            engine="code-davinci-001",
            # Settings from the Codex paper
            prompt=ruby_prompt,
            max_tokens=500,
            temperature=0.2,
            top_p=0.95,
            # NOTE(molly): Seems like reasonable stop sequences for Ruby
            # begin a new method, begin a new class, begin a many line comment, begin big break 
            stop=[ '\nclass', '\ndef', '\n=begin', '\n\n' ],
            n=1,
        )
        f.write(response[0])
        f.write("\n# Unit tests below\n\n")
        f.write(ruby_tests)


def main():
    directory = Path(Path(__file__).parent, "..", Path("datasets")).resolve()
    for file in sorted(directory.glob("originals/*.py")):
        process_file(file)

if __name__ == "__main__":
   main()
