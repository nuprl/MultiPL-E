from typing import List, Dict, Tuple

def capital_words_spaces(str1: str) -> str:
    """
	Write a function to put spaces between words starting with capital letters in a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('Python') == 'Python'
    assert candidate('PythonProgrammingExamples') == 'Python Programming Examples'
    assert candidate('GetReadyToBeCodingFreak') == 'Get Ready To Be Coding Freak'

def test_check():
    check(capital_words_spaces)

