from typing import List, Dict, Tuple

def sum_range_list(list1: List[int], m: int, n: int) -> int:
    """
	Write a function to find the sum of numbers in a list within a range specified by two indices.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12], 8, 10) == 29
    assert candidate([2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12], 5, 7) == 16
    assert candidate([2, 1, 5, 6, 8, 3, 4, 9, 10, 11, 8, 12], 7, 10) == 38

def test_check():
    check(sum_range_list)

