from typing import List, Dict, Tuple

def count_same_pair(nums1: List[int], nums2: List[int]) -> int:
    """
	The input is defined as two lists of the same length. Write a function to count indices where the lists have the same values.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5, 6, 7, 8], [2, 2, 3, 1, 2, 6, 7, 9]) == 4
    assert candidate([0, 1, 2, -1, -5, 6, 0, -3, -2, 3, 4, 6, 8], [2, 1, 2, -1, -5, 6, 4, -3, -2, 3, 4, 6, 8]) == 11
    assert candidate([2, 4, -6, -9, 11, -12, 14, -5, 17], [2, 1, 2, -1, -5, 6, 4, -3, -2, 3, 4, 6, 8]) == 1
    assert candidate([0, 1, 1, 2], [0, 1, 2, 2]) == 3

def test_check():
    check(count_same_pair)

