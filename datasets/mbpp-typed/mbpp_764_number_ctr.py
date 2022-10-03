from typing import List, Dict, Tuple

def number_ctr(str: str) -> int:
    """
	Write a python function to count number of digits in a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('program2bedone') == 1
    assert candidate('3wonders') == 1
    assert candidate('123') == 3
    assert candidate('3wond-1ers2') == 3

def test_check():
    check(number_ctr)

