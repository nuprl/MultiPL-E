# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script translates problems from the OpenAI HumanEval dataset into Lua.
import ast
import re
from completion import completion
from pathlib import Path
from typing import List

def translate_expr(translator, py_expr: ast.AST):
    """
    Translates a Python expression to Lua.
    """

    match py_expr:
        case ast.Constant(value=s):
            return translator.gen_literal(s)
        case ast.UnaryOp(op=o, operand=v):
            return translator.gen_unaryop(o, v)
        case ast.Name(id):
            return translator.gen_var(id)
        case ast.List(elts=elts):
            return translator.gen_list(elts)
        case ast.Tuple(elts=elts):
            return translator.gen_tuple(elts)
        case ast.Dict(keys=keys, values=values):
            return translator.gen_dict(keys, values)
        case ast.Call(func, args):
            return translator.gen_call(func, args)
        case ast.USub():
            return translator.USub
        case _other:
            print("OMFG" + py_expr)
            raise Exception(f"Unhandled expression: {py_expr}")

DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class PromptVisitor(ast.NodeVisitor):
    """Helper for translate_prompt"""
    def __init__(self, translator):
        super().__init__()
        self.state = "start"
        self.translator = translator

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

    def translate_func_decl(self) -> str|None:
        if self.state != "complete":
            return None
        args = ", ".join(self.arg_names)
        return self.translator.gen_func_decl(self.name, args, self.description)


def translate_prompt(translator, py_prompt: str, filename: str) -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Language L. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    prompt_ast = ast.parse(py_prompt + "    pass", filename)
    prompt_visitor = PromptVisitor(translator)
    prompt_visitor.visit(prompt_ast)
    return prompt_visitor.translate_func_decl()

def translate_tests(translator, py_tests: str, entry_point: str, filename: str) -> str:
    """
    Translates a suite of tests from the HumanEval dataset to Lua. Expects the code to look like:

    METADATA = ... <-- optional

    def check():
        assert(LHS == RHS)
        ...

    produces

    lu = require('luaunit')

    function test_humaneval()
        local candidate = entry_point
        lu.assertEquals(LHS, RHS)
        ...
    end

    os.exit(lu.LuaUnit.run())
    """
    tests_ast = ast.parse(py_tests, filename)
    test_cases = translator.test_suite_prefix_lines(entry_point)
    match tests_ast:
        case ast.Module(body=[ast.FunctionDef(body=body)]):
            body_ast = body
        case ast.Module(body=[ast.Assign(), ast.FunctionDef(body=body)]):
            body_ast = body
        case _other:
            return None # TODO(arjun): Should this blow up?
    for item_ast in body_ast:
        match item_ast:
            case ast.Assert(test=ast.Compare(left=left, ops=[ast.Eq()], comparators=[right])):
                try:
                    left = translate_expr(translator, left)
                    right = translate_expr(translator, right)
                    test_cases.append(translator.deep_equality(left, right))
                except Exception as e:
                    print (f"Exception translating expressions for {filename}: {e}")
                    return None
            case ast.Expr(value=ast.Name(id='print')):
                pass
            case _other:
                print("Failed to translate tests for " + filename)
                return None
    for line in translator.test_suite_suffix_lines():
        test_cases.append(line)
    return "\n".join(test_cases)

def translate_file(translator, file):
    file = Path(file).resolve()
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)

    filename = Path(file.parent, "..", f"{translator.file_ext}", f"{cleaned_task_id}_{entry_point}.{translator.file_ext}").resolve()
    filename.parent.mkdir(parents=True, exist_ok=True)
    
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
    translated_prompt = translate_prompt(translator, prompt, f"{cleaned_task_id}.py")

    # print(repr(lua_prompt))
    tests = "".join(tests_buffer)
    translated_tests = translate_tests(translator, tests, entry_point, f"{cleaned_task_id}.py")

    if translated_prompt is None:
        print(f"Failed to translate prompt for {filename}")
        return
    if translated_tests is None:
        print(f"Failed to translate tests for {filename}")
        return
    with open(filename, "w") as f:
        f.write(translated_prompt)
        response = completion(
            engine="code-davinci-001",
            # Settings from the Codex paper
            prompt=translated_prompt,
            max_tokens=500,
            temperature=0.2,
            top_p=0.95,
            stop=translator.stop,
            n=1,
        )
        f.write(response[0])
        f.write("\n-- Unit tests below\n\n")
        f.write(translated_tests)


class LuaTranslator:
    '''Lua Translator
    '''


    def test_suite_prefix_lines(self, entry_point) -> List[str]:
        return [
            "lu = require('luaunit')", "",
            "function test_humaneval()",
            f"local candidate = {entry_point}"
        ]

    def test_suite_suffix_lines(self) -> List[str]:
        return ["end", "", "os.exit(lu.LuaUnit.run())"]

    def deep_equality(self, left: str, right: str) -> str:
        return "    lu.assertEquals({}, {})".format(left, right)


    '''Operators'''
    USub = "-"
    # NOTE(arjun): Seems like reasonable stop sequences for Lua
    stop = [ '\nlocal', '\nfunction', '\n--', '\n\n' ]
    
    def __init__(self, convert_expr, file_ext):
        self.convert_expr = convert_expr
        self.file_ext = file_ext
    
    def gen_literal(self, c):
        ''' Translate a literal expression
            c: is the literal value
        '''
        if type(c) == bool:
            return str(c).lower()
        return repr(c)
    
    def gen_unaryop(self, op, v):
        '''Translate a unary operation (op, v)
        '''
        
        return self.convert_expr(self, op) + self.convert_expr(self, v)
    
    def gen_var(self, v):
        '''Translate a variable with name v.
        '''
        return v
    
    def gen_list(self, l):
        '''Translate a list with elements l
           A list [ x, y, z] translates to { x, y, z }
        '''
        return "{" + ", ".join(self.convert_expr(self, e) for e in l) + "}"
    
    def gen_tuple(self, t):
        '''Translate a tuple with elements t
           A tuple (x, y, z) translates to { x, y, z }
        '''
        return "{" + ", ".join(self.convert_expr(self, e) for e in t) + "}"
    
    def gen_dict(self, keys, values):
        '''Translate a dictionary with keys and values
           A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }  
        '''
        return "{" + ", ".join(f"[{self.convert_expr(self, k)}] = {self.convert_expr(self, v)}" for k, v in zip(keys, values)) + "}"
    
    def gen_call(self, func, args):
        '''Translate a function call `func(args)`
           A function call f(x, y, z) translates to f(x, y, z)
        '''
        return self.convert_expr(self, func) + "(" + ", ".join(self.convert_expr(self, a) for a in args) + ")"

    def gen_func_decl(self, name, args, description):
        lua_description = "-- " + re.sub(DOCSTRING_LINESTART_RE, "\n-- ", description.strip()) + "\n"

        return f"{lua_description}local function {name}({args})\n"

def main(translator):
    directory = Path(Path(__file__).parent, "..", "datasets").resolve()
    for filepath in sorted(directory.glob("originals/*.py")):
        translate_file(translator, filepath)

if __name__ == "__main__":
    #TODO: This is bad
    translator = LuaTranslator(translate_expr, "lua")
    main(translator)
