from typing import List, Dict, Tuple

def move_zero(num_list: List[int]) -> List[int]:
    """
	Write a python function to move all zeroes to the end of the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 0, 2, 0, 3, 4]) == [1, 2, 3, 4, 0, 0]
    assert candidate([2, 3, 2, 0, 0, 4, 0, 5, 0]) == [2, 3, 2, 4, 5, 0, 0, 0, 0]
    assert candidate([0, 1, 0, 1, 1]) == [1, 1, 1, 0, 0]

def test_check():
    check(move_zero)

