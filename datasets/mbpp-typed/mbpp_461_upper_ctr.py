from typing import List, Dict, Tuple

def upper_ctr(str: str) -> int:
    """
	Write a python function to count the upper case characters in a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('PYthon') == 1
    assert candidate('BigData') == 1
    assert candidate('program') == 0

def test_check():
    check(upper_ctr)

