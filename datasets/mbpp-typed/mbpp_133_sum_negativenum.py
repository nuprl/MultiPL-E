from typing import List, Dict, Tuple

def sum_negativenum(nums: List[int]) -> int:
    """
	Write a function to calculate the sum of the negative numbers of a given list of numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 4, -6, -9, 11, -12, 14, -5, 17]) == -32
    assert candidate([10, 15, -14, 13, -18, 12, -20]) == -52
    assert candidate([19, -65, 57, 39, 152, -639, 121, 44, 90, -190]) == -894

def test_check():
    check(sum_negativenum)

