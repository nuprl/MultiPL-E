from typing import List, Dict, Tuple

def largest_neg(list1: List[int]) -> int:
    """
	Write a python function to find the largest negative number from the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, -4, -6]) == -6
    assert candidate([1, 2, 3, -8, -9]) == -9
    assert candidate([1, 2, 3, 4, -1]) == -1

def test_check():
    check(largest_neg)

