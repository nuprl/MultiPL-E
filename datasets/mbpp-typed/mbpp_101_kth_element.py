from typing import List, Dict, Tuple

def kth_element(arr: List[int], k: int) -> int:
    """
	Write a function to find the kth element in the given array using 1-based indexing.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([12, 3, 5, 7, 19], 2) == 3
    assert candidate([17, 24, 8, 23], 3) == 8
    assert candidate([16, 21, 25, 36, 4], 4) == 36

def test_check():
    check(kth_element)

