from typing import List, Dict, Tuple

def get_Char(strr: str) -> str:
    """
	Write a python function to find the character made by adding the ASCII value of all the characters of the given string modulo 26.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('abc') == 'f'
    assert candidate('gfg') == 't'
    assert candidate('ab') == 'c'

def test_check():
    check(get_Char)

