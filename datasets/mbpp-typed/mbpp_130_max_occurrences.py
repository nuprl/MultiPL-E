from typing import List, Dict, Tuple

def max_occurrences(nums: List[int]) -> int:
    """
	Write a function to find the item with maximum frequency in a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 3, 8, 4, 7, 9, 8, 2, 6, 5, 1, 6, 1, 2, 3, 2, 4, 6, 9, 1, 2]) == 2
    assert candidate([2, 3, 8, 4, 7, 9, 8, 7, 9, 15, 14, 10, 12, 13, 16, 18]) == 8
    assert candidate([10, 20, 20, 30, 40, 90, 80, 50, 30, 20, 50, 10]) == 20

def test_check():
    check(max_occurrences)

