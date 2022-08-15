from __future__ import annotations
import argparse
from collections import OrderedDict, defaultdict
from pathlib import Path
import shutil
import os
import csv
from random import shuffle
import re
from typing import Any, Callable, Dict, List, Tuple
import yaml
try:
    from yaml import CLoader as YAML_Loader
except ImportError:
    print("Warning: You should really consider installing LibYAML (https://pyyaml.org/wiki/LibYAML), this script will run much faster")
    from yaml import Loader as YAML_Loader


def f_and(*funcs):
    def the_and(*args, **kwargs):
        return all(f(*args, **kwargs)[0] for f in funcs), None
    return the_and

def f_or(*funcs):
    def the_or(*args, **kwargs):
        for f in funcs:
            a, b = f(*args, **kwargs)
            if a:
                return True, b
        return False, None
    return the_or

def f_not(f):
    def the_not(*args, **kwargs):
        return not f(*args, **kwargs)[0], None
    return the_not

def match_re(re_str: str) -> Callable[[int, str, str, str, str], Tuple[bool, Any]]:
    the_re = re.compile(re_str)
    def the_predicate(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
        m = the_re.search(stderr)
        if m is None:
            return False, None
        else:
            return True, None
    return the_predicate

GATHERED_TYPE_ERROR_RES = set()
def match_type_error_re(re_str: str) -> Callable[[int, str, str, str, str], Tuple[bool, Any]]:
    global GATHERED_TYPE_ERROR_RES
    GATHERED_TYPE_ERROR_RES.add(re_str)

    the_re = re.compile(re_str)
    def the_predicate(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
        m = the_re.search(stderr)
        if m is None:
            return False, None
        else:
            return True, (m.group(1), m.group(2))
    return the_predicate


def ok_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return exit_code == 0 and status == 'OK', None

def timeout_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return exit_code != 0 and status == 'Timeout', None

def compile_error_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return exit_code != 0 and status == 'SyntaxError', None

def exception_category(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return exit_code != 0 and status == 'Exception', None

def assertion_fail(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Assertion failed\nCurrent stack trace:" in stderr, None

def unwrap_nil(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Unexpectedly found nil while unwrapping an Optional value\nCurrent stack trace:" in stderr, None

def index_out_of_range(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Index out of range\nCurrent stack trace:" in stderr, None

def string_index_out_of_bounds(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: String index is out of bounds\nCurrent stack trace:" in stderr, None

def array_index_out_of_range(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Array index is out of range\nCurrent stack trace:" in stderr, None

def invalid_range_creation(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Range requires lowerBound <= upperBound\nCurrent stack trace:" in stderr, None

def cant_remove_last_elem_from_empty_collection(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Can't remove last element from an empty collection\nCurrent stack trace:" in stderr, None

def cant_remove_first_elem_from_empty_collection(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Can't remove first element from an empty collection\nCurrent stack trace:" in stderr, None

def div_by_zero_remainder(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Division by zero in remainder operation\nCurrent stack trace:" in stderr, None

def negative_array_index(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return ": Fatal error: Negative Array index is out of range\nCurrent stack trace:" in stderr, None

def over_under_flow(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return stderr == "" and stdout == "" and status == 'Exception' and exit_code == -4, None

def compiler_error_cutoff(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error" not in stderr, None

def linker_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: link command failed with exit code 1" in stderr, None

def invalid_syntax(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    bad_syntax_markers = [
        "error: expected expression after operator",
        "error: expected '{' to start the body of for-each loop",
        "error: expected expression in 'switch' statement",
        "error: '[' is not allowed in operator names",
        "error: expected expression after '?' in ternary expression",
        "error: keyword 'as' cannot be used as an identifier here",
        "error: unary operator cannot be separated from its operand"
    ]
    return any(m in stderr for m in bad_syntax_markers) and \
        "error: expected expression after operator\n}\n^" not in stderr and \
            "error: expected pattern\n        for\n           ^" not in stderr and \
                "error: expected Sequence expression for for-each loop" not in stderr, None

def use_of_deprecated_unavailable_things(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    unavailable_markers = [
        "error: 'characters' is unavailable: Please use String directly"
    ]
    return any(m in stderr for m in unavailable_markers), None

def use_of_mod_with_float(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: '%' is unavailable: For floating point numbers use truncatingRemainder instead" in stderr, None


def subscript_string_with_int(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: 'subscript(_:)' is unavailable: cannot subscript String with an Int, use a String.Index instead." in stderr, None

REDECLARED_VAR_RE = re.compile(r"error: invalid redeclaration of .*")
def redeclared_var(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return REDECLARED_VAR_RE.search(stderr) is not None, None

nonexistent_method = f_or(
    match_re(r"error: value of type .* has no member .*"),
    match_re(r"error: value of tuple type .* has no member .*")
)

NONEXISTENT_VAR_RE = re.compile(r"error: cannot find .* in scope")
def nonexistent_var(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return NONEXISTENT_VAR_RE.search(stderr) is not None, None

USE_BEFORE_DECL_RE = re.compile(r"error: use of local variable .* before its declaration")
def use_before_decl(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return USE_BEFORE_DECL_RE.search(stderr) is not None, None

SHOULD_HAVE_UNWRAPPED_OPTIONAL_RE = re.compile(r"error: value of optional type .* must be unwrapped to a value of type .*")
def should_have_unwrapped_optional(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return SHOULD_HAVE_UNWRAPPED_OPTIONAL_RE.search(stderr) is not None, None

def non_optional_unwrapped(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: cannot force unwrap value of non-optional type" in stderr, None

return_type_error = match_type_error_re(r"error: cannot convert return expression of type (.*) to return type (.*)")
argument_type_error = match_type_error_re(r"error: cannot convert value of type (.*) to expected argument type (.*)")
closure_result_type_error = match_type_error_re(r"error: cannot convert value of type (.*) to closure result type (.*)")
branch_type_error = match_type_error_re(r"error: result values in '\? :' expression have mismatching types (.*) and (.*)")
bin_op_type_error = f_or(
    match_type_error_re(r"error: binary operator .* cannot be applied to operands of type (.*) and (.*)"), 
    match_type_error_re(r"error: operator function .* requires the types (.*) and (.*) be equivalent"),
    match_re(r"error: binary operator .* cannot be applied to two .* operands")
)
pattern_type_error = f_or(
    match_type_error_re(r"error: expression pattern of type (.*) cannot match values of type (.*)"),
    match_type_error_re(r"error: initializer for conditional binding must have (Optional) type, not (.*)")
)
subscript_type_error = match_type_error_re(r"error: subscript .* requires the types (.*) and (.*) be equivalent")
assignment_type_error = match_type_error_re(r"error: cannot assign value of type (.*) to type (.*)")

misc_type_error = f_or(
    match_type_error_re(r"error: referencing instance method .* on .* requires the types (.*) and (.*) be equivalent"),
    match_re(r"error: type 'Int' cannot be used as a boolean"),
    match_re(r"error: no 'subscript' candidates produce the expected contextual result type"),
    match_re(r"error: protocol 'Sequence' requires that 'String.Index' conform to 'Strideable'"),
    match_re(r"error: .* requires that .* conform to .*"),
    match_re(r"error: the compiler is unable to type-check this expression in reasonable time; try breaking up the expression into distinct sub-expressions"),
    match_re(r"error: 'nil' cannot be assigned to type .*"),
    match_re(r"error: .* is unavailable: cannot subscript String with an integer range, use a String.Index range instead")
)

def weird_subscript_type_error(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: cannot assign value of type '[Int]' to subscript of type 'ArraySlice<Int>'" in stderr, None

def calling_non_function_type(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: cannot call value of non-function type" in stderr, None

def unknown_type_error_in_call(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: no exact matches in call to" in stderr, None

def mutate_immutable(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    markers = [
        "error: left side of mutating operator isn't mutable:",
        "error: cannot assign to value:",
        "error: cannot use mutating member on immutable value:",
        "error: cannot assign through subscript:"
    ]
    return any(m in stderr for m in markers), None

non_exclusive_mutation = match_re(r"error: overlapping accesses to .*, but modification requires exclusive access")

MISSING_ARGUMENT_LABEL_RE = re.compile(r"error: missing argument labels? .* in call")
def missing_argument_label(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return MISSING_ARGUMENT_LABEL_RE.search(stderr) is not None, None

EXTRANEOUS_ARGUMENT_LABEL_RES = [
    re.compile(r"error: extraneous argument label .* in call"),
    re.compile(r"error: extraneous argument labels .* in call")
]
def extraneous_argument_label(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return any(the_re.search(stderr) is not None for the_re in EXTRANEOUS_ARGUMENT_LABEL_RES), None

def incorrect_argument_label(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: incorrect argument label in call" in stderr, None

extra_argument_in_call = match_re(r"error: extra arguments? .* in call")
# missing_argument_in_call = f_and(
#     match_re(r"error: missing arguments? .* in call"),
#     f_not(missing_argument_label)
# )


def missing_return(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    return "error: missing return in global function expected to return" in stderr, None

RAN_OUT_VAR_RES = [
    re.compile(r"(var|let) \S+$"),
    re.compile(r"(var|let)$"),
]
def ran_out_of_tokens(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
    markers = [
        "error: expected initial value after '='",
        "error: expected member name or constructor call after type name",
        "error: expected ']' in expression list",
        "error: expected '}' at end of brace statement",
        "error: expected '{' after 'if' condition",
        "error: expected 'in' after for-each pattern",
        "error: type annotation missing in pattern"
    ]
    return any(m in stderr for m in markers) or any(the_re.search(completion) is not None for the_re in RAN_OUT_VAR_RES), None


AKA_RE = re.compile(r"\(aka .*\)")
def type_mismatch_builder(type_pred_fn):
    def the_pred(exit_code: int, status: str, stderr: str, stdout: str, completion: str) -> Tuple[bool, Any]:
        did_get_a_regex_match = False
        t1 = ""
        t2 = ""
        for the_re in GATHERED_TYPE_ERROR_RES:
            did_match, maybe_t1_t2 = match_type_error_re(the_re)(exit_code, status, stderr, stdout, completion)
            if did_match:
                did_get_a_regex_match = True
                t1: str = maybe_t1_t2[0]
                t2: str = maybe_t1_t2[1]
                t1 = t1.replace("'", "")
                t2 = t2.replace("'", "")
                t1 = AKA_RE.sub("", t1)
                t2 = AKA_RE.sub("", t2)
                t1 = t1.strip()
                t2 = t2.strip()
                if type_pred_fn(t1, t2):
                    return True, None
                elif type_pred_fn(t2, t1):
                    return True, None
        if did_get_a_regex_match and type_pred_fn == type_mismatch_else_case_fn:
            # print(f"{t1} vs {t2}")
            pass
        return False, None
    return the_pred


def type_mismatch_both_numeric_fn(t1: str, t2: str) -> bool:
    def is_numeric(t: str) -> bool:
        return t in ['Int', 'UInt', 'Double', 'Float', 'Int64', 'Int32', 'Int16', 'Int8', 'UInt64', 'UInt32', 'UInt16', 'UInt8']
    m = is_numeric(t1) and is_numeric(t2)
    return m
type_mismatch_both_numeric = type_mismatch_builder(type_mismatch_both_numeric_fn)

def type_mismatch_collection_inner_type_fn(t1: str, t2: str) -> bool:
    if t1 == "String.Element" and t2 == "String":
        return True
    elif t1 == "Character" and t2 == "String":
        return True
    elif t1 == "[String]" and t2 == "String":
        return True
    elif t1 == "Array<Int>" and t2 == "Int":
        return True
    return False
type_mismatch_collection_inner_type = type_mismatch_builder(type_mismatch_collection_inner_type_fn)

def type_mismatch_string_indices_fn(t1: str, t2: str) -> bool:
    if t1 == "String.Index" and t2 == "Int":
        return True
    return False
type_mismatch_string_indices = type_mismatch_builder(type_mismatch_string_indices_fn)

def type_mismatch_strings_arent_char_arrays_fn(t1: str, t2: str) -> bool:
    if t1 == "[String.Element]" and t2 == "String":
        return True
    elif t1 == "String.SubSequence" and t2 == "String":
        return True
    elif t1 == "String.UTF8View.Element" and t2 == "Int8":
        return True
    elif t1 == "[Character]" and t2 == "Substring":
        return True
    elif t1 == "UnicodeScalar" and t2 == "String.Element":
        return True
    elif t1 == "Character" and t2 == "Int":
        return True
    elif t1 == "String.Element" and t2 == "Int":
        return True
    return False
type_mismatch_strings_arent_char_arrays = type_mismatch_builder(type_mismatch_strings_arent_char_arrays_fn)

def type_mismatch_else_case_fn(t1: str, t2: str) -> bool:
    return type_mismatch_both_numeric_fn(t1, t2) or \
        type_mismatch_collection_inner_type_fn(t1, t2) or \
            type_mismatch_string_indices_fn(t1, t2) or \
                type_mismatch_strings_arent_char_arrays_fn(t1, t2)
type_mismatch_else_case = type_mismatch_builder(type_mismatch_else_case_fn)


CATEGORY_DEFINITIONS: OrderedDict[str, Tuple[str, str, Callable[[int, str, str, str, str], Tuple[bool, Any]]]] = OrderedDict([
    ('CompileError', ('Any compilation error occurred', 'N/A',
        compile_error_category
    )),
    ('CompileError-RanOutOfTokens', ('Ran out of tokens. This category may only be an approximation, hard to tell in general.', 'N/A',
        f_and(compile_error_category, f_or(ran_out_of_tokens, compiler_error_cutoff))
    )),
    ('CompileError-CompilerErrorCutoff', ('Seems like the compiler crashed or for some reason its output got cutoff', 'N/A',
        f_and(compile_error_category, compiler_error_cutoff)
    )),
    ('CompileError-LinkerError', ('A weird linker error. **Could be caused by translation or evaluation bug?**', 'problem HumanEval_99_closest_integer, completion 171', 
        f_and(compile_error_category, linker_error)
    )),
    ('CompileError-InvalidSyntax', ('Invalid syntax in the completion.', 'problem HumanEval_160_do_algebra, completion 196', 
        f_and(compile_error_category, invalid_syntax)
    )),
    ('CompileError-UseOfDeprecatedUnavailableThings', ('The completion uses a function / method that existed in an old version of Swift.', 'problem HumanEval_111_histogram, completion 19', 
        f_and(compile_error_category, use_of_deprecated_unavailable_things)
    )),
    ('CompileError-UseOfModWithFloat', ('The completion uses % on a float / double.', 'problem HumanEval_151_double_the_difference, completion 92', 
        f_and(compile_error_category, use_of_mod_with_float)
    )),
    ('CompileError-SubscriptStringWithInt', ('Swift does not allow you to subscript a string using an Int.', 'problem HumanEval_119_match_parens, completion 53', 
        f_and(compile_error_category, subscript_string_with_int)
    )),
    ('CompileError-NonExistentMethod', ('An call was made to a non-existent method. **Some cases are caused by translation bug (didnt import Foundation). TODO: classify those cases.**', 'problem HumanEval_144_simplify, completion 90 ; problem HumanEval_108_count_nums, completion 110', 
        f_and(compile_error_category, nonexistent_method)
    )),
    ('CompileError-CanNotFindInScope', ('A reference to a non-existent variable / function.  **Some cases are caused by translation bug (didnt import Foundation). TODO: classify those cases.**', 'problem HumanEval_107_even_odd_palindrome, completion 89 ; problem HumanEval_71_triangle_area, completion 38', 
        f_and(compile_error_category, nonexistent_var)
    )),
    ('CompileError-UseBeforeDecl', ('A local variable is used before its declaration.', 'problem HumanEval_99_closest_integer, completion 142', 
        f_and(compile_error_category, use_before_decl)
    )),
    ('CompileError-RedeclarationOfVariable', ('A variable was re-declared.', 'problem HumanEval_154_cycpattern_check, completion 126', 
        f_and(compile_error_category, redeclared_var)
    )),
    ('CompileError-TypeCheck-ShouldHaveUnwrappedOptional', ('A value with Optional type should have been unwrapped / checked.', 'problem HumanEval_33_sort_third, completion 92', 
        f_and(compile_error_category, should_have_unwrapped_optional)
    )),
    ('CompileError-TypeCheck-UnwrappedNonOptional', ('A non-optional value was unwrapped.', 'problem HumanEval_89_encrypt, completion 103', 
        f_and(compile_error_category, non_optional_unwrapped)
    )),
    ('CompileError-TypeCheck-ReturnTypeError', ('The type of the return value does not match the declared return type of the function.', 'problem HumanEval_27_flip_case, completion 114', 
        f_and(compile_error_category, return_type_error)
    )),
    ('CompileError-TypeCheck-ArgumentTypeError', ('The type of an argument to a function does not match the expected type.', 'problem HumanEval_93_encode, completion 128', 
        f_and(compile_error_category, argument_type_error)
    )),
    ('CompileError-TypeCheck-ClosureResultTypeError', ('The type of the return value in a closure does not match the (likely inferred) return type of the closure.', 'problem HumanEval_161_solve, completion 137', 
        f_and(compile_error_category, closure_result_type_error)
    )),
    ('CompileError-TypeCheck-BranchTypeMismatch', ('The types of 2 branches do not match.', 'problem HumanEval_66_digitSum, completion 26', 
        f_and(compile_error_category, branch_type_error)
    )),
    ('CompileError-TypeCheck-BinOpTypeError', ('Type error when using a binary operator.', 'problem HumanEval_99_closest_integer, completion 38', 
        f_and(compile_error_category, bin_op_type_error)
    )),
    ('CompileError-TypeCheck-PatternTypeError', ('The expression in a switch statement has different type from the match pattern (or an if pattern).', 'problem HumanEval_17_parse_music, completion 95', 
        f_and(compile_error_category, pattern_type_error)
    )),
    ('CompileError-TypeCheck-SubscriptingTypeError', ('Subscripting has a type error.', 'problem HumanEval_10_make_palindrome, completion 77', 
        f_and(compile_error_category, subscript_type_error)
    )),
    ('CompileError-TypeCheck-AssignmentTypeError', ('Assignment has a type error.', 'problem HumanEval_140_fix_spaces, completion 143', 
        f_and(compile_error_category, assignment_type_error)
    )),
    ('CompileError-TypeCheck-MiscTypeError', ('misc type error', 'N/A',
        f_and(compile_error_category, misc_type_error)
    )),
    ('CompileError-TypeCheck-WeirdSubscriptTypeError', ('Some type error with subscripts. Dont quite understand whats wrong.', 'problem HumanEval_33_sort_third, completion 1', 
        f_and(compile_error_category, weird_subscript_type_error)
    )),
    ('CompileError-TypeCheck-CallingNonFunctionType', ('The code calls a non-function type.', 'problem HumanEval_9_rolling_max, completion 180', 
        f_and(compile_error_category, calling_non_function_type)
    )),
    ('CompileError-TypeCheck-UnknownTypeErrorInCall', ('Some misc. type error in a function call / initializer / subscript.', 'problem HumanEval_10_make_palindrome, completion 180', 
        f_and(compile_error_category, unknown_type_error_in_call)
    )),
    ('CompileError-ImmutableViolation', ('Attempted to mutate something that is immutable (e.g. let vs. var).', 'problem HumanEval_59_largest_prime_factor, completion 144', 
        f_and(compile_error_category, mutate_immutable)
    )),
    ('CompileError-NonExclusiveMutation', ('Attempted to simultaneously read and write, caught at type checking.', 'problem HumanEval_33_sort_third, completion 105', 
        f_and(compile_error_category, non_exclusive_mutation)
    )),
    ('CompileError-MissingArgumentLabel', ('An argument label is missing in a function call.', 'problem HumanEval_83_starts_one_ends, completion 146',
        f_and(compile_error_category, missing_argument_label)
    )),
    ('CompileError-ExtraneousArgumentLabel', ('An unnecessary argument label(s) is in a function call (possibly caused due to breaking changes in the version of Swift).', 'problem HumanEval_5_intersperse, completion 1', 
        f_and(compile_error_category, extraneous_argument_label)
    )),
    ('CompileError-IncorrectArgumentLabel', ('An incorrect argument label is in a function call (possibly caused due to breaking changes in the version of Swift).', 'problem HumanEval_93_encode, completion 161', 
        f_and(compile_error_category, incorrect_argument_label)
    )),
    ('CompileError-ExtraArgument', ('An extra argument(s) is in a function call.', 'problem HumanEval_18_how_many_times, completion 131', 
        f_and(compile_error_category, extra_argument_in_call)
    )),
    ('CompileError-MissingReturn', ('A return statement is missing.', 'problem HumanEval_83_starts_one_ends, completion 171', 
        f_and(compile_error_category, missing_return)
    )),
    ('CompileError-TypeMismatch-NumericsTypeError', ('Type mismatch between numeric types.', 'problem HumanEval_66_digitSum, completion 140', 
        f_and(compile_error_category, type_mismatch_both_numeric)
    )),
    ('CompileError-TypeMismatch-CollectionAndInner', ('Type mismatch between the collection type and element type, e.g. [String] and String.', 'problem HumanEval_27_flip_case, completion 2', 
        f_and(compile_error_category, type_mismatch_collection_inner_type)
    )),
    ('CompileError-TypeMismatch-StringIndices', ('Type mismatch with string index problems.', 'problem HumanEval_89_encrypt, completion 84', 
        f_and(compile_error_category, type_mismatch_string_indices)
    )),
    ('CompileError-TypeMismatch-StringsArentCharArrays', ('A string is not an array of characters.', 'problem HumanEval_161_solve, completion 3', 
        f_and(compile_error_category, type_mismatch_strings_arent_char_arrays)
    )),
    ('CompileError-TypeMismatch-OtherLocation', ('Type mismatch else case', 'N/A',
        f_and(compile_error_category, type_mismatch_else_case)
    )),
    # ('CompileError-Else', ('Other compilation errors', 
    #     f_and(
    #         compile_error_category, 
    #         f_not(f_or(
    #             ran_out_of_tokens,
    #             compiler_error_cutoff,
    #             linker_error,
    #             invalid_syntax,
    #             use_of_deprecated_unavailable_things,
    #             use_of_mod_with_float,
    #             subscript_string_with_int,
    #             nonexistent_method,
    #             nonexistent_var,
    #             use_before_decl,
    #             redeclared_var,
    #             should_have_unwrapped_optional,
    #             non_optional_unwrapped,
    #             return_type_error,
    #             argument_type_error,
    #             closure_result_type_error,
    #             branch_type_error,
    #             bin_op_type_error,
    #             pattern_type_error,
    #             subscript_type_error,
    #             assignment_type_error,
    #             misc_type_error,
    #             weird_subscript_type_error,
    #             calling_non_function_type,
    #             unknown_type_error_in_call,
    #             mutate_immutable,
    #             non_exclusive_mutation,
    #             missing_argument_label,
    #             extraneous_argument_label,
    #             incorrect_argument_label,
    #             extra_argument_in_call,
    #             missing_return,
    #             type_mismatch_both_numeric,
    #             type_mismatch_collection_inner_type,
    #             type_mismatch_string_indices,
    #             type_mismatch_strings_arent_char_arrays,
    #             type_mismatch_else_case
    #         ))
    #     )
    # )),

    ('OK', ('OK', 'N/A',
        ok_category
    )),
    ('Timeout', ('Is this runtime or compiler or both?', 'N/A',
        timeout_category
    )),
    ('Exception', ('Any runtime exception occurred', 'N/A',
        exception_category
    )),
    ('Exception-AssertionFail', ('An assertion failed.', 'problem HumanEval_92_any_int, completion 5', 
        f_and(exception_category, assertion_fail)
    )),
    ('Exception-UnwrapNil', ('Nil was unwrapped.', 'problem HumanEval_67_fruit_distribution, completion 119', 
        f_and(exception_category, unwrap_nil)
    )),
    ('Exception-IndexOutOfRange', ('Index out of range.', 'problem HumanEval_9_rolling_max, completion 137', 
        f_and(exception_category, index_out_of_range)
    )),
    ('Exception-StringIndexOutOfBounds', ('String index out of bounds.', 'problem HumanEval_134_check_if_last_char_is_a_letter, completion 50', 
        f_and(exception_category, string_index_out_of_bounds)
    )),
    ('Exception-ArrayIndexOutOfRange', ('Array index out of range.', 'problem HumanEval_37_sort_even, completion 50', 
        f_and(exception_category, array_index_out_of_range)
    )),
    ('Exception-InvalidRangeCreation', ('Invalid range creation.', 'problem HumanEval_82_prime_length, completion 128', 
        f_and(exception_category, invalid_range_creation)
    )),
    ('Exception-RemoveLastFromEmptyCollection', ('Attempted to remove last element from empty collection.', 'problem HumanEval_5_intersperse, completion 132', 
        f_and(exception_category, cant_remove_last_elem_from_empty_collection)
    )),
    ('Exception-RemoveFirstFromEmptyCollection', ('Attempted to remove first element from empty collection.', 'problem HumanEval_17_parse_music, completion 172', 
        f_and(exception_category, cant_remove_first_elem_from_empty_collection)
    )),
    ('Exception-DivisionByZeroInRemainder', ('Division by zero when calculating remainder (mod).', 'problem HumanEval_49_modp, completion 100', 
        f_and(exception_category, div_by_zero_remainder)
    )),
    ('Exception-NegativeArrayIndex', ('Negative array index.', 'problem HumanEval_10_make_palindrome, completion 193', 
        f_and(exception_category, negative_array_index)
    )),
    ('Exception-OverflowUnderflowTrap', ('A Int / UInt overflow / underflow occurred. Note: there isnt anything in the error messages that indicates this but I verified for all 9 cases manually.', 'problem HumanEval_76_is_simple_power, completion 40', 
        f_and(exception_category, over_under_flow)
    )),
    # ('Exception-Else', ('Other exceptions', 
    #     f_and(
    #         exception_category, 
    #         f_not(f_or(
    #             assertion_fail, 
    #             unwrap_nil, 
    #             index_out_of_range,
    #             string_index_out_of_bounds,
    #             array_index_out_of_range,
    #             invalid_range_creation, 
    #             cant_remove_last_elem_from_empty_collection,
    #             cant_remove_first_elem_from_empty_collection,
    #             div_by_zero_remainder,
    #             negative_array_index,
    #             over_under_flow
    #         ))
    #     )
    # )),
    
])



    

def main():
    parser = argparse.ArgumentParser(description='Categorize Swift errors')
    parser.add_argument('--in-dir', type=str, help='the directory .yaml and .results.yaml files.', default='experiments/swift-davinci-0.2-reworded')
    parser.add_argument('--examples-out-dir', type=str, help='the directory in which to place examples', default='error_classification/error-examples/swift')
    parser.add_argument('--csv-out', type=str, help='where to write the CSV', default='error_classification/swift_codes.csv')
    parser.add_argument('--n-examples', type=int, help='How many examples for each error code', default=None),
    parser.add_argument('--no-shuffle-examples', action='store_false', help='Disabling shuffling of examples', dest='shuffle_examples', default=True)
    parser.add_argument('--allow-fallthrough', action='store_true', help='Should fallthrough be allowed?')
    parser.add_argument('--allow-multimatch', action='store_true', help='Should multimatch be allowed?')
    

    args = parser.parse_args()

    in_dir = Path(args.in_dir)

    examples_out_dir = Path(args.examples_out_dir)
    csv_out = Path(args.csv_out)

    if examples_out_dir.exists():
        assert examples_out_dir.is_dir()
        print(f"Deleting {examples_out_dir}")
        shutil.rmtree(examples_out_dir, ignore_errors=True)
    if csv_out.exists():
        assert csv_out.is_file()
        print(f"Deleting {csv_out}")
        os.remove(csv_out)
    examples_out_dir.mkdir()

    print(f"Writing Swift codes to {csv_out}")
    print(f"Writing Swift examples to {examples_out_dir}")

    problems = load_problems(in_dir)
    category_results: OrderedDict[str, List[Tuple[str, int]]] = OrderedDict([(k, list()) for k in CATEGORY_DEFINITIONS.keys()])
    for prob in problems.values():
        for comp_idx in range(len(prob.completions)):
            comp = prob.completions[comp_idx]
            did_find_cat = False
            for cat_name, (_, _, cat_fn) in CATEGORY_DEFINITIONS.items():
                if cat_fn(comp.exit_code, comp.status, comp.stderr, comp.stdout, comp.completion)[0]:
                    if did_find_cat and not args.allow_multimatch:
                        raise Exception(f'prob = {prob.name}, comp_idx = {comp_idx} is in multiple categories. stderr = {comp.stderr}')
                    elif did_find_cat:
                        pass
                        # print(f'Warning: prob = {prob.name}, comp_idx = {comp_idx} is in multiple categories.')
                    did_find_cat = True
                    category_results[cat_name].append((prob.name, comp_idx))
            
            if not did_find_cat:
                if args.allow_fallthrough:
                    if 'fallthrough' not in category_results:
                        category_results['fallthrough'] = []
                    category_results['fallthrough'].append((prob.name, comp_idx))
                else:
                    raise Exception(f'No category matched for prob = {prob.name}, comp_idx = {comp_idx}.')
                    
    with csv_out.open('w', newline='') as csv_f:
        csv_writer = csv.writer(csv_f)
        csv_writer.writerow(['code', 'description', 'count', 'gold', 'examples'])

        for cat_name, example_keys in category_results.items():
            desc = 'SHOULD BE EMPTY' if cat_name == 'fallthrough' else CATEGORY_DEFINITIONS[cat_name][0]
            gold = 'SHOULD BE EMPTY' if cat_name == 'fallthrough' else CATEGORY_DEFINITIONS[cat_name][1]
            example_out = examples_out_dir / f"{cat_name}.swift"
            cat_count = len(example_keys)

            if args.shuffle_examples:
                shuffle(example_keys)

            if args.n_examples is not None:
                example_keys = example_keys[:(args.n_examples)]


            with example_out.open('w') as example_f:
                for (prob_name, comp_idx) in example_keys:
                    prob = problems[prob_name]
                    example_f.write(f"// ----------- problem {prob_name}, completion {comp_idx} ------------\n")
                    example_f.write(f"// status = {prob.completions[comp_idx].status}\n")
                    example_f.write(f"// exit_code = {prob.completions[comp_idx].exit_code}\n")
                    example_f.write(f"/* stderr = \n{prob.completions[comp_idx].stderr}\n*/\n")
                    example_f.write(f"/* stdout = \n{prob.completions[comp_idx].stdout}\n*/\n\n")
                    example_f.write(prob.program_for_completion(comp_idx))
                    example_f.write("\n\n\n\n")
            csv_writer.writerow([cat_name, desc, cat_count, gold, str(example_out)])
                    


    
    


def load_problems(in_dir: Path) -> Dict[str, Problem]:
    problems: Dict[str, Problem] = {}
    for entry in in_dir.iterdir():
        assert entry.is_file()

        entry_str = str(entry)
        if entry_str.endswith('.results.yaml'):
            continue
        if entry_str.endswith('.yaml'):
            results_entry = Path(entry_str.removesuffix('.yaml') + '.results.yaml')
            assert results_entry.exists()

            prob = Problem.from_yaml_files(entry, results_entry)
            problems[prob.name] = prob
    return problems

class ProblemCompletion(object):
    def __init__(self, completion: str, exit_code: int, status: str, stderr: str, stdout: str) -> None:
        self.completion = completion
        self.exit_code = exit_code
        self.status = status
        self.stdout = stdout
        self.stderr = stderr

class Problem(object):
    def __init__(self, name: str, prompt: str, tests: str, completions: List[ProblemCompletion]) -> None:
        self.name = name
        self.prompt = prompt
        self.tests = tests
        self.completions = completions

    def program_for_completion(self, completion_idx: int) -> str:
        return self.prompt + self.completions[completion_idx].completion + "\n" + self.tests

    @staticmethod
    def from_yaml_files(yaml_path: Path, results_yaml_path: Path) -> Problem:
        with open(yaml_path, 'r') as f:
            prob_data = yaml.load(f, YAML_Loader)
        with open(results_yaml_path, 'r') as f:
            results_data = yaml.load(f, YAML_Loader)
        
        prob_name = prob_data['name']
        assert prob_name == results_data['name']
        assert prob_data['language'] == 'swift' and results_data['language'] == 'swift'
        prompt = prob_data['prompt']
        tests = prob_data['tests']

        completions_raw = prob_data['completions']
        results = results_data['results']
        assert len(completions_raw) == len(results)

        comps: List[ProblemCompletion] = []
        for c, r in zip(completions_raw, results):
            assert prompt + c + "\n" + tests == r['program']
            comps.append(ProblemCompletion(c, r['exit_code'], r['status'], r['stderr'], r['stdout']))

        return Problem(prob_name, prompt, tests, comps)



if __name__ == "__main__":
    main()