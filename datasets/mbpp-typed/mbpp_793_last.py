from typing import List, Dict, Tuple

def last(arr: List[int], x: int) -> int:
    """
	Write a python function to find the last position of an element in a sorted array.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3], 1) == 0
    assert candidate([1, 1, 1, 2, 3, 4], 1) == 2
    assert candidate([2, 3, 2, 3, 6, 8, 9], 3) == 3

def test_check():
    check(last)

