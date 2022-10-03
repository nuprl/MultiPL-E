from typing import List, Dict, Tuple

def positive_count(nums: List[int]) -> float:
    """
	Write a function to find the ration of positive numbers in an array of integers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([0, 1, 2, -1, -5, 6, 0, -3, -2, 3, 4, 6, 8]) == 0.54
    assert candidate([2, 1, 2, -1, -5, 6, 4, -3, -2, 3, 4, 6, 8]) == 0.69
    assert candidate([2, 4, -6, -9, 11, -12, 14, -5, 17]) == 0.56

def test_check():
    check(positive_count)

