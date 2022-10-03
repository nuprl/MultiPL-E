from typing import List, Dict, Tuple

def intersection_array(array_nums1: List[int], array_nums2: List[int]) -> List[int]:
    """
	Write a function to find the intersection of two arrays.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 5, 7, 8, 9, 10], [1, 2, 4, 8, 9]) == [1, 2, 8, 9]
    assert candidate([1, 2, 3, 5, 7, 8, 9, 10], [3, 5, 7, 9]) == [3, 5, 7, 9]
    assert candidate([1, 2, 3, 5, 7, 8, 9, 10], [10, 20, 30, 40]) == [10]

def test_check():
    check(intersection_array)

