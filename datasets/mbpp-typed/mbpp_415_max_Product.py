from typing import List, Dict, Tuple

def max_Product(arr: List[int]) -> Tuple[int, int]:
    """
	Write a python function to find a pair with highest product from a given array of integers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 7, 0, 8, 4]) == (7, 8)
    assert candidate([0, -1, -2, -4, 5, 0, -6]) == (-4, -6)
    assert candidate([1, 2, 3]) == (2, 3)

def test_check():
    check(max_Product)

