from typing import List, Dict, Tuple

def get_median(arr1: List[int], arr2: List[int], n: int) -> float:
    """
	Write a function to find the median of two sorted lists of same size.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 12, 15, 26, 38], [2, 13, 17, 30, 45], 5) == 16.0
    assert candidate([2, 4, 8, 9], [7, 13, 19, 28], 4) == 8.5
    assert candidate([3, 6, 14, 23, 36, 42], [2, 18, 27, 39, 49, 55], 6) == 25.0

def test_check():
    check(get_median)

