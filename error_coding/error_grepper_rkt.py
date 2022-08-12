from asyncore import write
import re

from matplotlib.pyplot import cla
import yamlize_errors as yamlize_errors 
import sys
from pathlib import Path

SRC_PATH=Path(Path(__file__).parent, "..", "experiments", "rkt-davinci-0.2-reworded")
WRITE_PATH=Path(Path(__file__).parent, "..", "error_coding", "rkt-davinci-0.2-reworded")

# Technically a Trie is more efficient, but oh well
class Filters:

    # hack: since dir() sorts members alphabetically, we do this so this 
    # is the first to be checked.
    @staticmethod
    def A01_generating_webpage_or_markdown(e):
        return "<code>" in e.program or \
               "</code>" in e.program or \
               "```racket" in e.program or \
               'read-syntax: bad syntax `##`' in e.stderr # generating Markdown headers

    @staticmethod
    def bad_syntax(e):
        return "bad syntax" in e.stderr

    @staticmethod
    def missing_else(e):
        return 'missing an "else" expression' in e.stderr

    @staticmethod
    def bad_match(e):
        return ' match:' in e.stderr

    @staticmethod
    def bad_char_const(e):
        return "read-syntax: bad character constant" in e.stderr

    @staticmethod
    def missing_or_unmatched_braces(e):
        result = re.search(r"read-syntax: ((expected a ...|missing ...) to close ...|unexpected ...|expected ... to close)", e.stderr)
        return not (result is None)

    @staticmethod
    def double_sharp_lang(e):
        return "possible reason: not allowed again inside a module that already starts `#lang`" in e.stderr

    @staticmethod
    def missing_double_quotes(e):
        return 'read-syntax: expected a closing `"`' in e.stderr

    @staticmethod
    def unknown_escape_sequence(e):
        return "read-syntax: unknown escape sequence" in e.stderr

    @staticmethod
    def default_value_exp_missing(e):
        return "default-value expression missing" in e.stderr

    @staticmethod
    def unbound_identifier(e):
        return "unbound identifier" in e.stderr

    @staticmethod
    def contract_violation(e):
        """
        contract violation as errors.  
        """
        return "contract violation" in e.stderr

    @staticmethod
    def list_index_too_large(e):
        """
        index too large for list-ref
        """
        return "list-ref: index too large" in e.stderr

    @staticmethod
    def division_by_0(e):
        """
        """
        return "division by zero" in e.stderr
    
    @staticmethod
    def value_failure(e):
        """
        returned value is different than the expected value.
        """
        return "name:       check-equal?" in e.stderr
    
    @staticmethod
    def timeout(e):
        return "Timeout" == e.status

def print_program(result, name, f=sys.stdout):
    program = result.program
    status = result.status
    stderr = result.stderr
    print("==========================", file=f)
    print(f"------- Program {name} --------", file=f)
    print(program, file=f)
    print(f"------- Status: {status} --------", file=f)
    print("-------- stderr -------",file=f)
    print(stderr, file=f)

def find_errors(path):
    files = path.glob("*.results.yaml")
    errors = []
    #for f in [next(files) for _ in range(len(files))]:
    for f in files:
        print(f.name, file=sys.stderr)
        with open(f) as text:
            result_file = yamlize_errors.TestResults.load(text.read())
            results = result_file.results
            errored_results = [(r, result_file.name) for r in results if r.exit_code != 0]

            errors.extend(errored_results)

    def keyf(error_obj):
        return error_obj[0].status + error_obj[0].stderr 

    errors.sort(key=keyf)

    # (callable_method, name)
    filters = [(getattr(Filters, name), name) for name in dir(Filters) if callable(getattr(Filters, name)) and not name.startswith("__")]

    for filter in filters:
        print(filter[1], file=sys.stderr, end=",")  
    print("", file=sys.stderr)

    classified = {name: [] for _, name in filters}

    unclassified = []

    for i in range(len(errors)):
        current_classified = False
        err = errors[i][0]
        for filter in filters:
            func = filter[0]
            name_filter = filter[1]
            if func(err):
                classified[name_filter].append(i)
                current_classified = True
                break
        if not current_classified:
            unclassified.append(i)

    total = 0
    for error_cause in classified:
        if len(classified[error_cause]) == 0:
            continue
        file_tally = {}
        total += len(classified[error_cause])
        print(f"{error_cause}: {len(classified[error_cause])}")

        for result_i in classified[error_cause]:
            name = errors[result_i][1]
            if name in file_tally:
                file_tally[name] += 1
            else:
                file_tally[name] = 1

        with open(WRITE_PATH / f"{error_cause}.txt", "w") as write_file:
            for source_file in file_tally:
                print(f"{source_file}: {file_tally[source_file]}", file=write_file)
            for result_i in classified[error_cause]:
                result = errors[result_i]
                print_program(result[0], result[1], f=write_file)
            

    with open(WRITE_PATH / "unclassified.txt", "w") as write_file:
        for i in unclassified:
            print_program(errors[i][0], errors[i][1], f=write_file)

    print("unclassified:", len(unclassified))
    total += len(unclassified)

    print("total:", total)
    print("should have:", len(errors))

def main():
    find_errors(SRC_PATH)
    

if __name__ == "__main__":
    main()