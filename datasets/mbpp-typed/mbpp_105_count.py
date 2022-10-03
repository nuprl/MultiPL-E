from typing import List, Dict, Tuple

def count(lst: List[bool]) -> int:
    """
	Write a python function to count true booleans in the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([True, False, True]) == 2
    assert candidate([False, False]) == 0
    assert candidate([True, True, True]) == 3

def test_check():
    check(count)

