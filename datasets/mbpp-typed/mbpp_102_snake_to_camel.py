from typing import List, Dict, Tuple

def snake_to_camel(word: str) -> str:
    """
	Write a function to convert a snake case string to camel case string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('python_program') == 'PythonProgram'
    assert candidate('python_language') == 'PythonLanguage'
    assert candidate('programming_language') == 'ProgrammingLanguage'

def test_check():
    check(snake_to_camel)

