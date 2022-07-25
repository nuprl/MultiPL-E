# Authored by Arjun Guha
# Copyright (c) 2022, Roblox Inc.
#
# This script translates problems from the OpenAI HumanEval dataset into Lua.
import json
import os
import ast
import re
from completion import completion
from pathlib import Path

class LuaTranslator:
    '''Lua Translator
    '''

    '''Operators'''
    USub = "-"
    Eq = "=="
    Not = "not"
    Is = "=="
    Lt = "<"
    Mult = "*"
    Sub = "-"
    Pow = "^"
    stop = [ '\nlocal', '\nfunction', '\n--', '\n\n' ]
    
    def __init__(self, convert_expr):
        self.convert_expr = convert_expr
    
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
        
        return self.convert_expr(op) + self.convert_expr(v)
    
    def gen_var(self, v):
        '''Translate a variable with name v.
        '''
        return v
    
    def gen_list(self, l):
        '''Translate a list with elements l
           A list [ x, y, z] translates to { x, y, z }
        '''
        return "{" + ", ".join(self.convert_expr(e) for e in l) + "}"
    
    def gen_tuple(self, t):
        '''Translate a tuple with elements t
           A tuple (x, y, z) translates to { x, y, z }
        '''
        return "{" + ", ".join(self.convert_expr(e) for e in t) + "}"
    
    def gen_dict(self, keys, values):
        '''Translate a dictionary with keys and values
           A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }  
        '''
        return "{" + ", ".join(f"['{k}'] = {self.convert_expr(v)}" for k, v in zip(keys, values)) + "}"
    
    def gen_call(self, func, args):
        '''Translate a function call `func(args)`
           A function call f(x, y, z) translates to f(x, y, z)
        '''
        return self.convert_expr(func) + "(" + ", ".join(self.convert_expr(a) for a in args) + ")"

    def gen_binop(self, l, o, r):
        return self.convert_expr(l) + self.convert_expr(o) + self.convert_expr(r)

    def gen_func_decl(self, name, args, description):
        lua_description = "-- " + re.sub(DOCSTRING_LINESTART_RE, "\n-- ", description.strip()) + "\n"

        return f"{lua_description}local function {name}({args})\n"

def translate_expr(py_expr: ast.AST):
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
        case ast.BinOp(left=l, op=o, right=r):
            return translator.gen_binop(l,o,r)
        case ast.USub():
            return translator.USub
        case ast.Eq():
            return translator.Eq
        case ast.Not():
            return translator.Not
        case ast.Is():
            return translator.Is
        case ast.Lt():
            return translator.Lt
        case ast.Mult():
            return translator.Mult
        case ast.Sub():
            return translator.Sub
        case ast.Pow():
            return translator.Pow
        case ast.Compare(left=l, ops=o,comparators=r):
            return translate_expr(l) + translate_expr(o[0]) + translate_expr(r[0])
        case _other:
            print("OMFG" + py_expr.value)
            raise Exception(f"Unhandled expression: {py_expr}")

#TODO: This is annoying
translator = LuaTranslator(translate_expr)


DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class PromptVisitor(ast.NodeVisitor):
    """Helper for translate_prompt"""
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

    def translate_func_decl(self) -> str|None:
        if self.state != "complete":
            return None
        args = ", ".join(self.arg_names)
        return translator.gen_func_decl(self.name, args, self.description)


def translate_prompt(py_prompt: str, filename: str) -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Lua. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    prompt_ast = ast.parse(py_prompt + "    pass", filename)
    prompt_visitor = PromptVisitor()
    prompt_visitor.visit(prompt_ast)
    return prompt_visitor.translate_func_decl()

def translate_tests(py_tests: str, entry_point: str, filename: str) -> str:
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
    test_cases = [ "lu = require('luaunit')", "", "function test_humaneval()", f"local candidate = {entry_point}" ]
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
            case ast.Assert(test=exp):
                try:
                    translated_expr = translate_expr(exp)
                    test_cases.append("    lu.assertTrue({})".format(translated_expr))
                except Exception as e:
                    print(f"Exception translating expressions for {filename}: {e}")
                    return None
            case ast.Expr(value=ast.Name(id='print')):
                pass
            case _other:
                print(f"In tests for {filename}: {item_ast}")
                return None
    test_cases.append("end")
    test_cases.append("")
    test_cases.append("os.exit(lu.LuaUnit.run())")
    return "\n".join(test_cases)

def is_file_complete(path):
    with open(path) as f:
        for line in f:
            if line.startswith("os.exit(lu.LuaUnit.run())"):
                return True
    return False


def process_file(file):
    file = Path(file).resolve()
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)

    filename = Path(file.parent, "..", "lua", f"{cleaned_task_id}_{entry_point}.lua").resolve()
    filename.parent.mkdir(parents=True, exist_ok=True)

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
    translated_prompt = translate_prompt(prompt, f"{cleaned_task_id}.py")

    # print(repr(lua_prompt))
    tests = "".join(tests_buffer)
    translated_tests = translate_tests(tests, entry_point, f"{cleaned_task_id}.py")

    if translated_prompt is None:
        print(f"Failed to translate prompt for {filename}")
        return
    if translated_tests is None:
        print(f"Failed to translate tests for {filename}")
        return
    with open(filename, "w") as f:
        print("Success", filename)
        f.write(translated_prompt)
        response = completion(
            engine="code-davinci-001",
            # Settings from the Codex paper
            prompt=translated_prompt,
            max_tokens=500,
            temperature=0.2,
            top_p=0.95,
            # NOTE(arjun): Seems like reasonable stop sequences for Lua
            stop=translator.stop,
            n=1,
        )
        f.write(response[0])
        f.write("\n-- Unit tests below\n\n")
        f.write(translated_tests)


def main():
    directory = Path(Path(__file__).parent, "..", "datasets").resolve()
    for file in sorted(directory.glob("originals/*.py")):
        process_file(file)

if __name__ == "__main__":
    main()
