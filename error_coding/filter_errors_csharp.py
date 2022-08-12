from filter_errors_python import *


class CSharpProblem(PythonProblem):
    def __init__(self) -> None:
      super().__init__()
      #InvalidOperation = {KeyError, IndexOutOfRange, KeyNotFound, ArgumentOutOfRangeException}
      #
      #
      self.error_categories = {
        'NullReferenceException' : {"regex": "NullReferenceException", "desc": "", "count": 0, "completions": []},
        'InvalidOperationException' : {"regex": "InvalidOperationException", "desc": "Operation not valid on data structure, such as pop on empty stack", "count": 0, "completions": []},
        'FormatException' : {"regex": "FormatException", "desc": "Input string was not in a correct format", "count": 0, "completions": []},
        'ArgumentOutOfRangeException' : {"regex": "ArgumentOutOfRangeException", "desc": "Index was out of range. Must be non-negative and less than the size of the collection.", "count": 0, "completions": []},
        'IndexOutOfRangeException' : {"regex": "IndexOutOfRangeException", "desc": "Index was outside the bounds of the array", "count": 0, "completions": []},
        'NotImplementedException' : {"regex": "NotImplementedException", "desc": "The method or operation is not implemented", "count": 0, "completions": []},
        'ArgumentException' : {"regex": "ArgumentException", "desc": "Invalid number", "count": 0, "completions": []},
        'KeyNotFoundException' : {"regex": "KeyNotFoundException", "desc": "The given key '' was not present in the dictionary.", "count": 0, "completions": []},
        'Exception: Invalid beat:' : {"regex": "Exception: Invalid beat:", "desc": "Exception: Invalid beat:", "count": 0, "completions": []},
        
        "Type Conversion Error" : {"regex": r"cannot(.+)convert", "desc": "cannot convert from 'long' to 'int'", "count": 0, "completions": []},
        "no return in all branches" : {"regex": "not all code paths return a value", "desc": "not all code paths return a value", "count": 0, "completions": []},
        'Name does not exist' : {"regex": "does not exist in the current context", "desc": "The name does not exist in the current context", "count": 0, "completions": []},
        # 'Implicit Type Conversion' : {"regex": "Cannot implicitly convert type", "desc": "Cannot implicitly convert type", "count": 0, "completions": []},
        "SyntaxError" : {"regex": "(']')|(})|(;) expected", "desc": "Expected ], }, or ; but not present", "count": 0, "completions": []},
        # 'Syntax error: } expected' : {"regex": "} expected", "desc": "} expected", "count": 0, "completions": []},
        # 'Syntax error:  ; expected' : {"regex": "; expected", "desc": "; expected", "count": 0, "completions": []},
        'Declaration error' : {"regex": "cannot be declared in this scope because that name is used in an enclosing local scope to define a local or parameter", "desc": "A local or parameter named 'i' cannot be declared in this scope because that name is used in an enclosing local scope to define a local or parameter", "count": 0, "completions": []},
        'TypeNotFound' : {"regex": "could not be found", "desc": "Type not found", "count": 0, "completions": []},
        'Invalid argument' : {"regex": "(There is no argument given that corresponds to the required formal parameter)|(No overload for method)", "desc": "There is no argument given that corresponds to the required formal parameter", "count": 0, "completions": []},
        'Method not found' : {"regex": "does not contain a definition for", "desc": "does not contain a definition for", "count": 0, "completions": []},
        # 'Convert convert type' : {"regex": "Cannot convert null", "desc": "Cannot convert null to 'long' because it is a non-nullable value type", "count": 0, "completions": []},

        # 'Convert convert type II' : {"regex": "cannot convert from", "desc": "cannot convert from", "count": 0, "completions": []},
        'Invalid Assignment' : {"regex": "Cannot assign", "desc": "Cannot assign to a variable, such as assigning void to a variable", "count": 0, "completions": []},
        # 'InvalidMethodCall' : {"regex": "No overload for method", "desc": "No overload for method  takes 2 arguments", "count": 0, "completions": []},
        # 'Cannot assign void' : {"regex": "Cannot assign void to an implicitly-typed variable", "desc": "Cannot assign void to an implicitly-typed variable", "count": 0, "completions": []},
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

    def from_yaml_files(self, lang:str, yaml_path: Path, results_yaml_path: Path):
        with open(yaml_path, 'r') as f:
            prob_data = yaml.load(f, YAML_Loader)
        with open(results_yaml_path, 'r') as f:
            results_data = yaml.load(f, YAML_Loader)
        
        prob_name = prob_data['name']
        assert prob_name == results_data['name']
        assert prob_data['language'] == lang and results_data['language'] == lang
        prompt = prob_data['prompt']
        tests = prob_data['tests']

        completions_raw = prob_data['completions']
        results = results_data['results']
        assert len(completions_raw) == len(results)

        comps: List[ProblemCompletion] = []
        for c, r in zip(completions_raw, results):
            assert prompt + c + "\n" + tests == r['program']
            if self.filter_result(r):
              completion = ProblemCompletion(c, r['exit_code'], r['status'], r['stderr'], r['stdout'])
              comps.append(completion)
              if r['status'] == "SyntaxError":
                self.record_error_types(r['stdout'], completion)
              else:
                self.record_error_types(r['stderr'], completion)

if __name__ == "__main__":
    main(CSharpProblem())

