from typing import List, Dict, Tuple

def find_Element(arr: List[int], ranges: List[List[int]], rotations: int, index: int) -> int:
    """
	Write a python function to find element at a given index after number of rotations.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5], [[0, 2], [0, 3]], 2, 1) == 3
    assert candidate([1, 2, 3, 4], [[0, 1], [0, 2]], 1, 2) == 3
    assert candidate([1, 2, 3, 4, 5, 6], [[0, 1], [0, 2]], 1, 1) == 1

def test_check():
    check(find_Element)

