from typing import List, Dict, Tuple

def find_kth(arr1: List[int], arr2: List[int], k: int) -> int:
    """
	Write a function to find kth element from the given two sorted arrays.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 3, 6, 7, 9], [1, 4, 8, 10], 5) == 6
    assert candidate([100, 112, 256, 349, 770], [72, 86, 113, 119, 265, 445, 892], 7) == 256
    assert candidate([3, 4, 7, 8, 10], [2, 5, 9, 11], 6) == 8

def test_check():
    check(find_kth)

