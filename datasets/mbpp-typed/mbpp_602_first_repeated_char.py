from typing import List, Dict, Tuple

def first_repeated_char(str1: str) -> Optional[str]:
    """
	Write a python function to find the first repeated character in a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('abcabc') == 'a'
    assert candidate('abc') == None
    assert candidate('123123') == '1'

def test_check():
    check(first_repeated_char)

