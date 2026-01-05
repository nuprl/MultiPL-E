# This is a helper script for translating problems from the OpenAI HumanEval
# problems to Language L.
import ast
import traceback
from glob import glob
import re
import csv
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
        case ast.Set(elts=elts):
            return translator.gen_set([translate_expr(translator, e) for e in elts])
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

    def __init__(self, translator, added_canonical=""):
        super().__init__()
        self.state = "start"
        self.translator = translator
        self.added_canonical = added_canonical

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
                self.translator.translate_prompt(
                    self.name, self.args, self.returns, self.description)

                # Steps:
                # Find the Python expression and result in each doctest
                # py_ast = ast.parse("PYTHON EXPRESSION", "bogus filename")
                # translate_expr(py_ast, self.translator) to get the string for that expression in the target language

                # Split up the prompt from the doctests
                # promptAndDoctests = self.description.split('>>>')
                if '>>>' in self.description:  # checking if there are doctests
                    doctestRegex = re.compile(r'>>>.*\n.*\n')
                    onlyDocTests = []
                    for m in re.finditer(doctestRegex, self.description):
                        onlyDocTests.append((m.start(), m.end()))
                    desc = ''
                    pos = 0
                    for i in onlyDocTests:
                        desc += self.description[pos:i[0]]
                        doctest = self.description[i[0]:i[1]]
                        # Splitting up the output from the function call of the doctest
                        doclist = doctest.split('\n')
                        funcCall = ast.parse(
                            doclist[0].strip('>>> ')).body[0].value
                        output = ast.parse(doclist[1].strip()).body[0].value
                        transl_funccall = translate_expr(
                            self.translator, funcCall)
                        transl_output = translate_expr(self.translator, output)
                        if hasattr(self.translator, "finalize"):
                            transl_funccall = self.translator.finalize(
                                transl_funccall, "lhs")
                            transl_output = self.translator.finalize(
                                transl_output, "rhs")
                        # Why is this str() here?
                        desc += '>>> ' + transl_funccall + \
                            '\n    ' + str(transl_output) + '\n'
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
                else:  # else when there are no doctests
                    # Still return the description, because we are probably rewording!
                    desc = self.description
            case _other:
                raise Exception(f"bad doctest_transformation")
        desc_lines = desc.split("\n")
        # remove all empty lines
        desc_lines = [line for line in desc_lines if line.strip() != ""]

        # find first indentation amount
        indent = 0
        # we skip the first line because typically it is not indented
        if len(desc_lines) > 1:
            for line in desc_lines[1:]:
                if line.strip() != "":
                    indent = len(line) - len(line.lstrip())
                    break

        # remove indentation by that exact amount
        for i, line in enumerate(desc_lines):
            deindent = line[indent:]
            if deindent.lstrip() == line.lstrip():
                desc_lines[i] = deindent

        desc = "\n".join(desc_lines)

        if self.added_canonical:
            desc = "## Canonical Python Solution ##\n" + self.added_canonical + "\n" + desc
        return self.translator.translate_prompt(self.name, self.args, self.returns, desc)


def translate_prompt(translator, doctest_transformation: str, py_prompt: str, filename: str, added_canonical: str = "") -> str:
    """
    Reads in a prompt from the HumanEval dataset with "    pass" appended. Translates the prompt to
    Language L. Ignores type annotations and imports. Fails if the prompt has auxiliary functions.
    """
    try:
        prompt_ast = ast.parse(py_prompt + "    pass", filename)
        prompt_visitor = PromptVisitor(translator, added_canonical)
        prompt_visitor.visit(prompt_ast)
        return prompt_visitor.translate_func_decl(doctest_transformation)
    except Exception as e:
        print(f"Exception translating prompt for {filename}: {e}")
        traceback.print_exception(e)
        return None


def translate_tests(
        translator,
        py_tests: str,
        entry_point: str,
        filename: str,
        panic_on_test_fail=True,
) -> str:
    """
    Translates a suite of tests from the HumanEval dataset to Language L. Expects the code to look like:

    METADATA = ... <-- optional

    def check():
        assert(LHS == RHS)
        ...
    """
    try:
        tests_ast = ast.parse(py_tests, filename)
    except Exception as e:
        print(f"Exception parsing tests for {filename}: {e}")
        traceback.print_exception(e)
        return None
    prefix_lines = translator.test_suite_prefix_lines(entry_point)
    test_cases = prefix_lines.copy()
    seen_tests = {}
    match tests_ast:
        case ast.Module(body=[ast.FunctionDef(body=body)]):
            body_ast = body
        case ast.Module(body=[ast.Assign(), ast.FunctionDef(body=body)]):
            body_ast = body
        case _other:
            return None  # TODO: Should this blow up?
    for i, item_ast in enumerate(body_ast):
        match item_ast:
            case ast.Assert(
                test=ast.Compare(
                    left=left, ops=[ast.Eq()], comparators=[right])
            ):
                try:
                    left = translate_expr(translator, left)
                    right = translate_expr(translator, right)
                    if hasattr(translator, "finalize"):
                        left = translator.finalize(left, "lhs")
                        right = translator.finalize(right, "rhs")
                    if left in seen_tests and seen_tests[left] != right:
                        print(
                            f"Conflicting tests for {filename}: {left} == {seen_tests[left]} vs {right}"
                        )
                        if panic_on_test_fail:
                            return None
                        continue
                    seen_tests.setdefault(left, right)
                    test_cases.append(translator.deep_equality(left, right))
                except Exception as e:
                    print(
                        f"Exception translating test case {i} for {filename}: {e}")
                    traceback.print_exception(e)
                    if panic_on_test_fail:
                        return None
            case ast.Expr(value=ast.Name(id="print")):
                pass
            case _other:
                print("Failed to translate tests for " + filename)
                return None

    if len(test_cases) == len(prefix_lines):
        print("No tests were translated for " + entry_point)
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


lang_dict = {}
with open('terms.csv', 'r') as of:
    term_list = csv.DictReader(of)
    for row in term_list:
        lang_dict[row['py']] = row
    fields = [k.strip() for k in row.keys()]


def consonant(s):
    return s.lower() not in 'aeiou'


def vowel(s):
    return s.lower() in 'aeiou'


def translate_terms(language, fields, prompt):
    """
    Takes a programming language name, a list of vocabulary words to translate, and a portion of docstring text.
    Returns the docstring text with Python-specific vocab translated to the target language.
    """
    if language == "go_test.go":
        language = "go"
    target_dict = lang_dict[language]
    for f in fields:
        if target_dict[f] != 'Q':
            variants = [f]
            lower_variant = f.lower()
            if lower_variant != f:
                variants.append(lower_variant)
            article = "an" if vowel(target_dict[f][0]) else "a"
            for variant in variants:
                if variant in prompt:
                    prompt = re.sub(
                        rf"\b(a|an)\s+{re.escape(variant)}\b",
                        f"{article} {target_dict[f]}",
                        prompt,
                    )
                    prompt = re.sub(rf"\b{re.escape(variant)}\b", target_dict[f], prompt)
    return prompt


def edit_prompt_terminology(language, example):
    """
    Takes a programming language name and the text of a python file.
    Translates Python-specific terms in natural language portions of the docstring to the target language.
    Returns the full text of the python file with translated natural language docstring.
    """
    before, prompt, after = example.replace("'''", '"""').split('"""')[0:3]
    doctestRegex = re.compile(r'>>>.*\n.*\n')
    doctests = []
    for m in re.finditer(doctestRegex, prompt):
        doctests.append((m.start(), m.end()))
    if len(doctests) == 0:
        tar_prompt = translate_terms(language, fields, prompt)
    else:
        tar_prompt = ''
        last = 0
        for i in doctests:
            more_prompt = translate_terms(language, fields, prompt[last:i[0]])
            more_doctest = prompt[i[0]:i[1]]
            last = i[1]
            tar_prompt += more_prompt+more_doctest
        tar_prompt += translate_terms(language, fields, prompt[last:])

    return before+'"""'+tar_prompt+'"""'+after


def translate_prompt_and_tests(
        original_file,
        translator,
        doctests,
        prompt_terminology,
        add_canonical_to_prompt=False,
        panic_on_test_fail=True,
):
    entry_point = re.search("([^0-9]+_\d+)_(.+).py",
                            original_file.name).group(2)
    reading_prompt = True
    reading_tests = False
    reading_canonical = False
    canonical_body_buffer = []
    prompt_buffer = []
    tests_buffer = []
    with open(original_file) as f:
        for line in f:
            if "### Canonical solution below ###" in line:
                reading_prompt = False
                reading_canonical = True
                line = ""
            if "### Unit tests below ###" in line:
                reading_canonical = False
                reading_tests = True
                continue
            if "def test_check():" in line:
                break

            if reading_canonical:
                canonical_body_buffer.append(line)
            if reading_prompt:
                prompt_buffer.append(line)
            if reading_tests:
                tests_buffer.append(line)

    canonical = "".join(
        ["# " + line[4:] for line in canonical_body_buffer if line.strip() != ""])
    prompt = "".join(prompt_buffer)

    if prompt_terminology == "reworded":
        prompt = edit_prompt_terminology(translator.file_ext(), prompt)
    translated_prompt = translate_prompt(
        translator, doctests, prompt, original_file.name, added_canonical=canonical if add_canonical_to_prompt else "")
    # When doctests == "remove" and there are no doctests in prompt, we get None.
    # If not, we could create a translated prompt that is identical to the
    # doctests == "keep" case.
    if translated_prompt is None:
        return None

    tests = "".join(tests_buffer)
    translated_tests = translate_tests(
        translator,
        tests,
        entry_point,
        original_file.name,
        panic_on_test_fail=panic_on_test_fail
    )

    if translated_tests is None:
        return None

    return translated_prompt, translated_tests


def get_stop_from_translator(translator) -> List[str]:
    if isinstance(translator, LanguageTranslator):
        return translator.stop()
    else:
        return translator.stop


def list_originals(root):
    directory = Path(Path(__file__).parent, "..", "datasets").resolve()
    files_unsorted = directory.glob(f"{root}/*.py")
    # assumption: base filenames are in the format of HumanEval_X_*.py
    # Where X is a valid number
    def key_func(s): return int(str(s.name).split("_")[1])
    files_by_number = {key_func(file): file for file in files_unsorted}

    return files_by_number
