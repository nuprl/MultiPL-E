from typing import List, Dict, Tuple

def max_product(arr: List[int]) -> int:
    """
	Write a function to find the maximum product formed by multiplying numbers of an increasing subsequence of that array.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([3, 100, 4, 5, 150, 6]) == 3000
    assert candidate([4, 42, 55, 68, 80]) == 50265600
    assert candidate([10, 22, 9, 33, 21, 50, 41, 60]) == 2460

def test_check():
    check(max_product)

