from typing import List, Dict, Tuple

def big_diff(nums: List[int]) -> int:
    """
	Write a python function to find the difference between largest and smallest value in a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4]) == 3
    assert candidate([4, 5, 12]) == 8
    assert candidate([9, 2, 3]) == 7

def test_check():
    check(big_diff)

