from typing import List, Dict, Tuple

def remove_Occ(s: str, ch: str) -> str:
    """
	Write a python function to remove first and last occurrence of a given character from the string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('hello', 'l') == 'heo'
    assert candidate('abcda', 'a') == 'bcd'
    assert candidate('PHP', 'P') == 'H'

def test_check():
    check(remove_Occ)

