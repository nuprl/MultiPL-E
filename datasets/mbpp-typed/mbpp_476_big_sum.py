from typing import List, Dict, Tuple

def big_sum(nums: List[int]) -> int:
    """
	Write a python function to find the sum of the largest and smallest value in a given array.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3]) == 4
    assert candidate([-1, 2, 3, 4]) == 3
    assert candidate([2, 3, 6]) == 8

def test_check():
    check(big_sum)

