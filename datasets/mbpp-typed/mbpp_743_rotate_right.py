from typing import List, Dict, Tuple

def rotate_right(list: List[int], m: int) -> List[int]:
    """
	Write a function to rotate a given list by specified number of items to the right direction. https://www.geeksforgeeks.org/python-program-right-rotate-list-n/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 3) == [8, 9, 10, 1, 2, 3, 4, 5, 6, 7]
    assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 2) == [9, 10, 1, 2, 3, 4, 5, 6, 7, 8]
    assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 5) == [6, 7, 8, 9, 10, 1, 2, 3, 4, 5]

def test_check():
    check(rotate_right)

