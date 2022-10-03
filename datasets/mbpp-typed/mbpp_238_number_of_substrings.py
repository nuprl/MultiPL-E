from typing import List, Dict, Tuple

def number_of_substrings(str: str) -> int:
    """
	Write a python function to count the number of non-empty substrings of a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('abc') == 6
    assert candidate('abcd') == 10
    assert candidate('abcde') == 15

def test_check():
    check(number_of_substrings)

