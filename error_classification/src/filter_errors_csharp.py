from filter_errors_python import *


class CSharpProblem(PythonProblem):
    def __init__(self) -> None:
      super().__init__()
      #InvalidOperation = {KeyError, IndexOutOfRange, KeyNotFound, ArgumentOutOfRangeException}
      #
      #
      self.error_categories = {
        'NullReferenceException' : {"regex": "NullReferenceException", "desc": "De-referencing a null reference", "gold": "HumanEval_158_find_max --- completion 0", "count": 0, "completions": []},
        'InvalidOperationException' : {"regex": "InvalidOperationException", "desc": "Operation not valid on data structure, such as pop on empty stack", "gold": " HumanEval_28_concatenate --- completion 0", "count": 0, "completions": []},
        'FormatException' : {"regex": "FormatException", "desc": "Input string was not in a correct format", "count": 0, "gold": "HumanEval_155_even_odd_count --- completion 1", "completions": []},
        'ArgumentOutOfRangeException' : {"regex": "ArgumentOutOfRangeException", "desc": "Index was out of range", "count": 0, "gold": "HumanEval_33_sort_third --- completion 38","completions": []},
        'IndexOutOfRangeException' : {"regex": "IndexOutOfRangeException", "desc": "Index was outside the bounds of the array", "count": 0, "gold": "HumanEval_83_starts_one_ends --- completion 10","completions": []},
        'NotImplementedException' : {"regex": "NotImplementedException", "desc": "The method or operation is not implemented", "count": 0, "gold": "HumanEval_136_largest_smallest_integers --- completion 76","completions": []},
        'ArgumentException' : {"regex": "ArgumentException", "desc": "Invalid number", "count": 0, "gold": " HumanEval_19_sort_numbers --- completion 6","completions": []},
        'KeyNotFoundException' : {"regex": "KeyNotFoundException", "desc": "The given key was not present in the dictionary.", "count": 0, "gold": "HumanEval_19_sort_numbers --- completion 57","completions": []},
        'InvalidBeat' : {"regex": "Exception: Invalid beat:", "desc": "Exception: Invalid beat:", "count": 0, "gold": "HumanEval_17_parse_music --- completion 8","completions": []},
        
        "TypeConversion" : {"regex": r"cannot(.+)convert", "desc": "Cannot convert types", "count": 0, "gold": "HumanEval_155_even_odd_count --- completion 2","completions": []},
        "MissingReturn" : {"regex": "not all code paths return a value", "desc": "Not all code paths return a value", "count": 0, "gold": "HumanEval_129_minPath --- completion 116","completions": []},
        'UndefinedIdentifier' : {"regex": "does not exist in the current context", "desc": "The name does not exist in the current context", "count": 0, "gold": "HumanEval_127_intersection --- completion 0","completions": []},
        # 'Implicit Type Conversion' : {"regex": "Cannot implicitly convert type", "desc": "Cannot implicitly convert type", "count": 0, "completions": []},
        "SyntaxError" : {"regex": "(']')|(})|(;) expected", "desc": "Expected ], }, or ; but not present", "count": 0, "gold": "HumanEval_43_pairs_sum_to_zero --- completion 0","completions": []},
        # 'Syntax error: } expected' : {"regex": "} expected", "desc": "} expected", "count": 0, "completions": []},
        # 'Syntax error:  ; expected' : {"regex": "; expected", "desc": "; expected", "count": 0, "completions": []},
        'Re-declaration' : {"regex": "cannot be declared in this scope because that name is used in an enclosing local scope to define a local or parameter", "desc": "A local or parameter named 'i' cannot be declared in this scope because that name is used in an enclosing local scope to define a local or parameter", "count": 0, "gold": "HumanEval_86_anti_shuffle --- completion 3","completions": []},
        'TypeNotFound' : {"regex": "could not be found", "desc": "Type not found", "count": 0, "gold": "HumanEval_116_sort_array --- completion 0 ","completions": []},
        'InvalidArgument' : {"regex": "(There is no argument given that corresponds to the required formal parameter)|(No overload for method)", "desc": "There is no argument given that corresponds to the required formal parameter", "count": 0, "gold": "HumanEval_33_sort_third --- completion 0","completions": []},
        'MethodNotFound' : {"regex": "does not contain a definition for", "desc": "does not contain a definition for", "count": 0, "gold": "HumanEval_82_prime_length --- completion 7","completions": []},
        # 'Convert convert type' : {"regex": "Cannot convert null", "desc": "Cannot convert null to 'long' because it is a non-nullable value type", "count": 0, "completions": []},

        # 'Convert convert type II' : {"regex": "cannot convert from", "desc": "cannot convert from", "count": 0, "completions": []},
        'InvalidAssignment' : {"regex": "Cannot assign", "desc": "Cannot assign to a variable, such as assigning void to a variable", "count": 0, "gold": "HumanEval_104_unique_digits --- completion 11","completions": []},
        # 'InvalidMethodCall' : {"regex": "No overload for method", "desc": "No overload for method  takes 2 arguments", "count": 0, "completions": []},
        # 'Cannot assign void' : {"regex": "Cannot assign void to an implicitly-typed variable", "desc": "Cannot assign void to an implicitly-typed variable", "count": 0, "completions": []},
        'Timeout' : {"regex":"", "gold": "---- HumanEval_100_make_a_pile --- completion 106 ----", "desc":"Program is running for more than 5 mins", "count" : 0, "gold":" HumanEval_100_make_a_pile --- completion 111", "completions":[]},
        'OK' : {"regex":"", "gold": "", "desc":"Program ran fine", "count" : 0, "completions":[]},
        'AssertionError' : {"regex":"", "gold": "", "desc":"Assertion failed", "count" : 0, "completions":[]}
      }

    def program_for_completion(self, completion_idx: int) -> str:
        return self.prompt + self.completions[completion_idx].completion + "\n" + self.tests

    def filter_result(self, result):
      if result['status'] == 'OK':
        return False
      if result['status'] == "SyntaxError" or 'System.Diagnostics.DefaultTraceListener.Fail' not in result['stderr']:
        return True
      return False

    def record_error_types(self, error, completion):
      if error == None or str(error) == "None" or str(error) == "":
        return
      
      if '/tmp/tmpikzninf8.cs' in error or '/tmp/tmpa8kypyyo.cs' in error:
        return

      super().record_error_types(error, completion)

if __name__ == "__main__":
    main(CSharpProblem())

