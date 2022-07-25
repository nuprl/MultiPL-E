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

def expr_to_lua(py_expr: ast.AST):
    """
    Translates a Python expression to Lua.
    - Strings and numbers are quoted.
    - Booleans are lowercased.
    - Variables translate trivially (we print them as themselves)
    - An array [ x, y, z] translates to { x, y, z }
    - A tuple (x, y, z) translates to { x, y, z }
    - A dictionary { "key1": val1, "key2": val2 } translates to { ["key1"] = val1, ["key2"] = val2 }
    - A function call f(x, y, z) translates to f(x, y, z)
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
            return "{" + ", ".join(expr_to_lua(e) for e in elts) + "}"
        case ast.Tuple(elts=elts):
            return "{" + ", ".join(expr_to_lua(e) for e in elts) + "}"
        case ast.Dict(keys=keys, values=values):
            return "{" + ", ".join(f"['{k}'] = {expr_to_lua(v)}" for k, v in zip(keys, values)) + "}"
        case ast.Call(func, args):
            return expr_to_lua(func) + "(" + ", ".join(expr_to_lua(a) for a in args) + ")"
        case _other:
            print("OMFG" + py_expr.value)
            raise Exception(f"Unhandled expression: {py_expr}")


DOCSTRING_LINESTART_RE = re.compile("""\n(\s+)""")

class PromptVisitor(ast.NodeVisitor):
    """Helper for prompt_to_lua"""
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

    def lua_function_decl(self) -> str|None:
        if self.state != "complete":
            return None
        args = ", ".join(self.arg_names)
        lua_description = "-- " + re.sub(DOCSTRING_LINESTART_RE, "\n-- ", self.description.strip()) + "\n"

        return f"{lua_description}local function {self.name}({args})\n"


def prompt_to_lua(py_prompt: str, filename: str) -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Lua. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    prompt_ast = ast.parse(py_prompt + "    pass", filename)
    prompt_visitor = PromptVisitor()
    prompt_visitor.visit(prompt_ast)
    return prompt_visitor.lua_function_decl()

def tests_to_lua(py_tests: str, entry_point: str, filename: str) -> str:
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
            case ast.Assert(test=ast.Compare(left=left, ops=[ast.Eq()], comparators=[right])):
                try:
                    test_cases.append("    lu.assertEquals({}, {})".format(expr_to_lua(left), expr_to_lua(right)))
                except Exception as e:
                    print(f"Exception translating expressions for {filename}: {e}")
                    return None
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
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)

    filename = (
        "lua_humaneval/" + cleaned_task_id + f"_{entry_point}.lua"
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
    lua_prompt = prompt_to_lua(prompt, f"{cleaned_task_id}.py")

    tests = "".join(tests_buffer)
    lua_tests = tests_to_lua(tests, entry_point, f"{cleaned_task_id}.py")

    if lua_prompt is None:
        print(f"Failed to translate prompt for {filename}")
        return
    if lua_tests is None:
        print(f"Failed to translate tests for {filename}")
        return
    with open(filename, "w") as f:
        f.write(lua_prompt)
        response = completion(
            engine="code-davinci-001",
            # Settings from the Codex paper
            prompt=lua_prompt,
            max_tokens=500,
            temperature=0.2,
            top_p=0.95,
            # NOTE(arjun): Seems like reasonable stop sequences for Lua
            stop=[ '\nlocal', '\nfunction', '\n--', '\n\n' ],
            n=1,
        )
        f.write(response[0])
        f.write("\n-- Unit tests below\n\n")
        f.write(lua_tests)


def main():
    directory = Path("datasets").resolve()
    for file in sorted(directory.glob("*.py")):
        process_file(file)

if __name__ == "__main__":
    main()
