from typing import List, Dict, Tuple

def max_sum(arr: List[int]) -> int:
    """
	Write a function that takes an array and finds the maximum sum of a bitonic subsequence for the given array, where a sequence is bitonic if it is first increasing and then decreasing.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 15, 51, 45, 33, 100, 12, 18, 9]) == 194
    assert candidate([80, 60, 30, 40, 20, 10]) == 210
    assert candidate([2, 3, 14, 16, 21, 23, 29, 30]) == 138

def test_check():
    check(max_sum)

