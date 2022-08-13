from asyncore import write
import re
from tkinter import W

import yamlize_errors as yamlize_errors 
import sys
import csv
from pathlib import Path

SOURCE="rkt-davinci-0.2-reworded"
SRC_PATH=Path(Path(__file__).parent, "..", "..", "experiments", SOURCE)
WRITE_PATH_DIR=Path(Path(__file__).parent, "..", "error-examples" , SOURCE)
CSV_PATH=Path(Path(__file__).parent, "..", "racket_codes.csv")

def count_braces_balance(program):
    count = 0
    in_double_quotes = False
    for line in program.split("\n"):
        for c in line:
            if in_double_quotes:
                if c != '"':
                    continue
                else:
                    in_double_quotes = False
                    continue
            if c == ";":
                break
            elif c == '"':
                in_double_quotes = True
            elif c in ["(", "[", "{"]:
                count += 1
            elif c in [")", "]", "}"]:
                count -= 1
    return count 

# Technically a Trie is more efficient, but oh well
class Filters:

    # hack: since dir() sorts members alphabetically, we do this so this 
    # is the first to be checked.
    @staticmethod
    def A01GeneratingWebpageOrMarkdown(e):
        """
        Generated code seems to be part of webpage or markdown source file.
        """
        return "<code>" in e.program or \
               "</code>" in e.program or \
               "```racket" in e.program or \
               'read-syntax: bad syntax `##`' in e.stderr # generating Markdown headers
    
    @staticmethod
    def A02IncompleteGeneration(e):
        """
        Quick heuristic: programs that have generation timeouts will not have correct matching brackets.
        We treat all kinds of braces as the same (i.e. (] is a matching pair).
        """
        return count_braces_balance(e.program) != 0

    @staticmethod
    def A03IfExtraArgs(e):
        """Generated code contains if with more than 3 arguments."""
        return "if: bad syntax" in e.stderr

    @staticmethod
    def arityMismatch(e):
        """A function is called with wrong number of arguments."""
        return "arity mismatch;" in e.stderr

    @staticmethod
    def badSyntax(e):
        """
        Racket compiler reported bad syntax (excluding ifs).
        """
        return "bad syntax" in e.stderr

    @staticmethod
    def missingElse(e):
        """
        Generated code contains if with 2 arguments or less; expecting 3.
        """
        return 'missing an "else" expression' in e.stderr

    @staticmethod
    def badMatch(e):
        """
        Malformed match statement: either missing a operand for match clause; or syntax error in pattern.
        """
        return ' match:' in e.stderr or "match: no matching clause for" in e.stderr

    @staticmethod
    def badCharConst(e):
        """
        Racket compiler reported bad character constant.
        """
        return "read-syntax: bad character constant" in e.stderr

    @staticmethod
    def missingOrUnmatchedBraces(e):
        """
        Missing or unmatched braces that is not caused by incomplete generation.
        """
        result = re.search(r"read-syntax: ((expected a ...|missing ...) to close ...|unexpected ...|expected ... to close)", e.stderr)
        return not (result is None)

    @staticmethod
    def unknownEscapeSequence(e):
        """
        Bad escape sequence; caused by a missing backslash \\ in regular expressions (2 required in escape sequences for regular expressions).
        """
        return "read-syntax: unknown escape sequence" in e.stderr

    @staticmethod
    def defaultValueExpMissing(e):
        """
        Racket requiring the nested function (with same name but a "'" character at the end) to have a default value for the last argument.
        The "'" character at the end might be Haskell syntax.
        """
        return "default-value expression missing" in e.stderr

    @staticmethod
    def unboundIdentifier(e):
        """
        generated code uses non-existent identifier names.
        """
        return "unbound identifier" in e.stderr
    
    @staticmethod
    def useBeforeInit(e):
        """
        Use of an identifier before initialization.
        """
        return "cannot use before initialization" in e.stderr

    @staticmethod
    def letDuplicateIdentifier(e):
        """
        let special form defines duplicate identifier.
        """
        return "let: duplicate identifier" in e.stderr

    @staticmethod
    def contractViolation(e):
        """
        contract violation as errors.  
        """
        return "contract violation" in e.stderr

    @staticmethod
    def indexOutOfRange(e):
        """
        out-of-range index access for list and string; or ending index smaller than beginning index for substring.
        """
        return "list-ref: index too large" in e.stderr or \
               "is not an exact nonnegative integer" in e.stderr or \
               "list contains too few elements" in e.stderr 

    @staticmethod
    def stringIndexOutOfRange(e):
        """
        out-of-range index access for string; or ending index smaller than beginning index for substring.
        """
        return "index is out of range" in e.stderr or "ending index is smaller than starting index" in e.stderr

    @staticmethod
    def hashmapNoValueForKey(e):
        """
        No value for given key for hash map.
        """
        return "hash-ref: no value found for key" in e.stderr or "hash-update: no value found for key:" in e.stderr
    
    @staticmethod
    def badBuiltInFnAppCall(e):
        """
        Calling a built-in function in a non-expected way (with correct arity).
        """
        return "member: not a proper list" in e.stderr or \
               "map: all lists must have same size" in e.stderr or \
               "hash: key does not have a value (i.e., an odd number of arguments were provided)" in e.stderr or \
               "number->string: inexact numbers can only be printed in base 10" in e.stderr or \
               "  procedure: round" in e.stderr or \
               "  procedure: sort" in e.stderr or \
               "  procedure: not" in e.stderr or \
               "list-ref: index reaches a non-pair" in e.stderr or \
               "map: argument mismatch;" in e.stderr or \
               "for: expected a sequence" in e.stderr

    @staticmethod
    def applicationOnNotAFunction(e):
        """
        generated program attempts to apply function application with rator that is not a function.
        """
        return "application: not a procedure;" in e.stderr or "function application is not allowed;" in e.stderr

    @staticmethod
    def divisionBy0(e):
        """
        """
        return "division by zero" in e.stderr
    
    @staticmethod
    def zz99ValueFailure(e):
        """
        returned value is different than the expected value in tests.
        """
        return "FAILURE" in e.stderr and (not ("ERROR" in e.stderr))

    @staticmethod
    def elseAsExpression(e):
        """
        Generated code contains an 'else' as expression.
        """
        return "else: not allowed as an expression" in e.stderr

    @staticmethod
    def errorByGeneratedProgram(e):
        """
        Generated code contains explicitly created error and program execution reaches the created error.
        """
        return "(error" in e.program and "ERROR" in e.stderr

    @staticmethod
    def timeout(e):
        """
        """
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
    total_results_count = 0
    errors = []
    #for f in [next(files) for _ in range(len(files))]:
    for f in files:
        print(f.name, file=sys.stderr)
        with open(f) as text:
            result_file = yamlize_errors.TestResults.load(text.read())
            results = result_file.results
            total_results_count += len(results)
            errored_results = [(r, result_file.name) for r in results if r.exit_code != 0 or r.status != "OK"]
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
        if not current_classified:
            unclassified.append(i)

    total_errors_found = 0
    WRITE_PATH_DIR.mkdir(exist_ok=True)

    for error_cause in classified:
        if len(classified[error_cause]) == 0:
            continue
        file_tally = {}
        total_errors_found += len(classified[error_cause])
        print(f"{error_cause}: {len(classified[error_cause])}")

        for result_i in classified[error_cause]:
            name = errors[result_i][1]
            if name in file_tally:
                file_tally[name] += 1
            else:
                file_tally[name] = 1

        with open(WRITE_PATH_DIR / f"{error_cause}.txt", "w") as write_file:
            for source_file in file_tally:
                print(f"{source_file}: {file_tally[source_file]}", file=write_file)
            for result_i in classified[error_cause]:
                result = errors[result_i]
                print_program(result[0], result[1], f=write_file)
            
    with open(WRITE_PATH_DIR / "unclassified.txt", "w") as write_file:
        for i in unclassified:
            print_program(errors[i][0], errors[i][1], f=write_file)

    print("unclassified:", len(unclassified))
    total_errors_found += len(unclassified)

    print("total results:", total_results_count)
    print("total completions:", len(errors))
    print("total errors:", total_errors_found)

    with CSV_PATH.open('w', newline='') as csv_f:

        csv_writer = csv.writer(csv_f)
        csv_writer.writerow(['code', 'description', 'count', 'example'])
        for filter_method, filter_name in filters:
            desc = " ".join([s.strip() for s in filter_method.__doc__.split("\n")]).strip().replace(",",";")
            csv_writer.writerow([filter_name,\
                 desc,\
                 len(classified[filter_name]),\
                 f"{SOURCE}/{filter_name}.txt"])
        csv_writer.writerow(["unclassified",\
            "Does not fit in all above descriptions",\
            len(unclassified),\
            f"{SOURCE}/unclassified.txt"])
        csv_writer.writerow(["total errors", "", total_errors_found, ""])
        

def main():
    find_errors(SRC_PATH)
    

if __name__ == "__main__":
    main()