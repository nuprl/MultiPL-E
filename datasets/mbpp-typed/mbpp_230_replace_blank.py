from typing import List, Dict, Tuple

def replace_blank(str1: str, char: str) -> str:
    """
	Write a function that takes in a string and character, replaces blank spaces in the string with the character, and returns the string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('hello people', '@') == 'hello@people'
    assert candidate('python program language', '$') == 'python$program$language'
    assert candidate('blank space', '-') == 'blank-space'

def test_check():
    check(replace_blank)

