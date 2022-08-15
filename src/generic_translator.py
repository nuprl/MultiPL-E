# This is a helper script for translating problems from the OpenAI HumanEval
# problems to Language L.
import ast
import traceback
from glob import glob
import re
from pathlib import Path
import argparse
from base_language_translator import LanguageTranslator
from typing import List


def translate_expr(translator, py_expr: ast.AST):
    """
    Translates a Python expression to Language L.
    """

    match py_expr:
        case ast.Constant(value=s):
            return translator.gen_literal(s)
        case ast.UnaryOp(op=ast.USub(), operand=ast.Constant(value=n)) if type(3) in [int, float]:
            return translator.gen_literal(-n)
        case ast.Name(id):
            return translator.gen_var(id)
        case ast.List(elts=elts):
            return translator.gen_list([translate_expr(translator, e) for e in elts])
        case ast.Tuple(elts=elts):
            return translator.gen_tuple([translate_expr(translator, e) for e in elts])
        case ast.Dict(keys=keys, values=values):
            return translator.gen_dict(
                [translate_expr(translator, e) for e in keys],
                [translate_expr(translator, e) for e in values],
            )
        case ast.Call(func, args):
            return translator.gen_call(
                translate_expr(translator, func),
                [translate_expr(translator, a) for a in args],
            )
        case _other:
            # print("OMFG" + py_expr)
            raise Exception(f"Unhandled expression: {py_expr}")


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
        self.args = node.args.args
        self.returns = node.returns

        match node.body:
            case [ast.Expr(value=ast.Constant(s)), ast.Pass()] if type(s) == str:
                self.description = s
                self.state = "complete"
            case _other:
                self.state = "error"
        
    def translate_func_decl(self, doctest_transformation: str) -> str | None:
        if self.state != "complete":
            return None
        match doctest_transformation:
            case "keep":
                desc = self.description
            case "remove":
                doctestRegex = re.compile(r'>>>.*\n.*\n')
                desc = re.sub(doctestRegex, '', self.description)
                if desc == self.description:
                    print('skipping (no doctests to remove)')
                    return None
            case "transform":
                # We first run the translate_prompt with the original
                # prompt. This is a hack! We need each script to have some sort
                # of setup method that remembers type information and such. But,
                # people have already done so in translate_prompt because it used
                # to be called first all the time. Calling it here as a setup
                # function should hopefully(!) not break anything
                self.translator.translate_prompt(self.name, self.args, self.returns, self.description)

                # Steps:
                # Find the Python expression and result in each doctest
                # py_ast = ast.parse("PYTHON EXPRESSION", "bogus filename")
                # translate_expr(py_ast, self.translator) to get the string for that expression in the target language
                
                #Split up the prompt from the doctests
                #promptAndDoctests = self.description.split('>>>')
                if '>>>' in self.description: #checking if there are doctests
                    doctestRegex = re.compile(r'>>>.*\n.*\n')
                    onlyDocTests = []
                    for m in re.finditer(doctestRegex, self.description):
                        onlyDocTests.append((m.start(),m.end()))
                    desc = ''
                    pos = 0
                    for i in onlyDocTests:
                        desc += self.description[pos:i[0]]
                        doctest = self.description[i[0]:i[1]]
                        doclist = doctest.split('\n') #Splitting up the output from the function call of the doctest
                        funcCall = ast.parse(doclist[0].strip('>>> ')).body[0].value
                        output = ast.parse(doclist[1].strip()).body[0].value
                        transl_funccall = translate_expr(self.translator, funcCall)
                        transl_output = translate_expr(self.translator, output)
                        if hasattr(self.translator, "finalize"):
                            transl_funccall = self.translator.finalize(transl_funccall, "lhs")
                            transl_output = self.translator.finalize(transl_output, "rhs")
                        # Why is this str() here?
                        desc += '>>> ' + transl_funccall + '\n    ' + str(transl_output) + '\n'
                        pos = i[1]
                    
                    desc += self.description[pos:]

                    # for test in (promptAndDoctests[1:]): #Removing each doctest from any junk
                    #     onlyDocTests.append(doctestRegex.match(test).group())
                    
                    # funcCalls = []
                    # outputs = []
                    # for doctest in onlyDocTests:
                    #     doclist = doctest.split('\n') #Splitting up the output from the function call of the doctest
                    #     funcCalls.append(ast.parse(doclist[0].strip()).body[0].value)
                    #     outputs.append(ast.parse(doclist[1].strip()).body[0].value)

                    # for i in range(len(funcCalls)):
                    #     funcCalls[i] = translate_expr(self.translator, funcCalls[i])
                    #     outputs[i] = translate_expr(self.translator, outputs[i])
                    
                    # desc = promptAndDoctests[0]
                    # for i in range(len(funcCalls)):
                    #     desc += funcCalls[i] + '\n' + outputs[i] + '\n\n'
                else: #else when there are no doctests
                    # Still return the description, because we are probably rewording!
                    desc = self.description
            case _other:
                raise Exception(f"bad doctest_transformation")
        return self.translator.translate_prompt(self.name, self.args, self.returns, desc)


def translate_prompt(translator, doctest_transformation: str, py_prompt: str, filename: str) -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Language L. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    prompt_ast = ast.parse(py_prompt + "    pass", filename)
    prompt_visitor = PromptVisitor(translator)
    try:
        prompt_visitor.visit(prompt_ast)
        return prompt_visitor.translate_func_decl(doctest_transformation)
    except Exception as e:
        print(f"Exception translating prompt for {filename}: {e}")
        traceback.print_exception(e)
        return None


def translate_tests(translator, py_tests: str, entry_point: str, filename: str) -> str:
    """
    Translates a suite of tests from the HumanEval dataset to Language L. Expects the code to look like:

    METADATA = ... <-- optional

    def check():
        assert(LHS == RHS)
        ...
    """
    tests_ast = ast.parse(py_tests, filename)
    test_cases = translator.test_suite_prefix_lines(entry_point)
    match tests_ast:
        case ast.Module(body=[ast.FunctionDef(body=body)]):
            body_ast = body
        case ast.Module(body=[ast.Assign(), ast.FunctionDef(body=body)]):
            body_ast = body
        case _other:
            return None  # TODO: Should this blow up?
    for item_ast in body_ast:
        match item_ast:
            case ast.Assert(
                test=ast.Compare(left=left, ops=[ast.Eq()], comparators=[right])
            ):
                try:
                    left = translate_expr(translator, left)
                    right = translate_expr(translator, right)
                    if hasattr(translator, "finalize"):
                        left = translator.finalize(left, "lhs")
                        right = translator.finalize(right, "rhs")
                    test_cases.append(translator.deep_equality(left, right))
                except Exception as e:
                    print(f"Exception translating expressions for {filename}: {e}")
                    traceback.print_exception(e)
                    return None
            case ast.Expr(value=ast.Name(id="print")):
                pass
            case _other:
                print("Failed to translate tests for " + filename)
                return None
    for line in translator.test_suite_suffix_lines():
        test_cases.append(line)
    return "\n".join(test_cases)


def target_path(args, translator, file):
    file = Path(file).resolve()
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)
    file_ext = get_file_ext_from_translator(translator)
    filename = Path(
        file.parent,
        "..",
        f"{file_ext}-{args.doctests}-{args.model}",
        f"{cleaned_task_id}_{entry_point}.{file_ext}",
    ).resolve()
    return filename

def translate_prompt_and_tests(original_file, translator, doctests):
    entry_point = re.search("(HumanEval_\d+)_(.+).py", original_file.name).group(2)
    reading_prompt = True
    reading_tests = False
    prompt_buffer = []
    tests_buffer = []
    with open(original_file) as f:
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
    translated_prompt = translate_prompt(translator, doctests, prompt, original_file.name)
    # When doctests == "remove" and there are no doctests in prompt, we get None.
    # If not, we could create a translated prompt that is identical to the
    # doctests == "keep" case.
    if translated_prompt is None:
        return None

    tests = "".join(tests_buffer)
    translated_tests = translate_tests(
        translator, tests, entry_point, original_file.name
    )

    if translated_tests is None:
        return None

    return translated_prompt, translated_tests

def translate_file(args, translator, file):
    file = Path(file).resolve()
    cleaned_task_id = re.search("HumanEval_\d+", file.name).group(0)
    entry_point = re.search("(HumanEval_\d+)_(.+).py", file.name).group(2)

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
    translated_prompt = translate_prompt(translator, args.doctests, prompt, f"{cleaned_task_id}.py")

    tests = "".join(tests_buffer)
    translated_tests = translate_tests(
        translator, tests, entry_point, f"{cleaned_task_id}.py"
    )

    if translated_prompt is None:
        print(f"Failed to translate prompt for {file}")
        return
    if translated_tests is None:
        print(f"Failed to translate tests for {file}")
        return

    if not args.no_completion:
        response = MODELS[args.model](args, translated_prompt, get_stop_from_translator(translator), 1)[0]
    else:
        response = get_stub_from_translator(translator)

    filename = target_path(args, translator, file)

    filename.parent.mkdir(parents=True, exist_ok=True)

    with open(filename, "w") as f:
        f.write(translated_prompt)
        f.write(response)
        f.write("\n\n")
        f.write(translated_tests)
        print(f'Wrote {filename}')


def get_stub_from_translator(translator) -> str:
    if hasattr(translator, 'no_completion_prompt_stub'):
        return translator.no_completion_prompt_stub()
    else:
        return ""

def get_stop_from_translator(translator) -> List[str]:
    if isinstance(translator, LanguageTranslator):
        return translator.stop()
    else:
        return translator.stop

def get_file_ext_from_translator(translator):
    if type(translator.file_ext) == type(""):
        return translator.file_ext
    else:
        return translator.file_ext()

def list_originals(root):
    directory = Path(Path(__file__).parent, "..", "datasets").resolve()
    files_unsorted = directory.glob(f"{root}/*.py") 
    # assumption: base filenames are in the format of HumanEval_X_*.py
    # Where X is a valid number
    key_func = lambda s: int(str(s.name).split("_")[1])
    files_by_number = {key_func(file): file for file in files_unsorted}
    
    return files_by_number

def main(translator):
    stop = get_stop_from_translator(translator)
    if len(stop) <= 0 or len(stop) > 4:
        raise Exception("Translator must have 0 < n <= 4 stop words!")

    # Commandline arguments: --port 
    args = argparse.ArgumentParser()
    args.add_argument("--port", type=int, default=9000, help="Port to use for OpenAI Caching Proxy")

    # argument --doctests with options "keep", "remove", and "transform"
    args.add_argument(
        "--doctests",
        type=str,
        default="keep",
        help="What to do with doctests: keep, remove, or transform",
    )

    args.add_argument(
        "--model",
        type=str,
        default="code_davinci_001_temp_0.2",
        help="Code generation model to use")

    args.add_argument(
        "--files",
        type=int,
        nargs="*",
        default=[],
        help="Specify the files to translate by their number, e.g. --files 0 1 2"
    )

    args.add_argument('--no-completion', action='store_true')

    args.add_argument("--originals", type=str, required=True)

    args = args.parse_args()

    if args.doctests not in [ "keep", "remove", "transform" ]:
        raise Exception("Invalid value for --doctests")


    files_by_number = list_originals(args.originals)
    files_index = []
    if len(args.files) > 0:
        files_index = args.files
    else:
        files_index = sorted(files_by_number.keys())
    for i in files_index:
        if i not in files_by_number:
            print(f"File {i} does not exist!")
            continue
        filepath = files_by_number[i]
        translate_file(args, translator, filepath)
