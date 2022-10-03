from typing import List, Dict, Tuple

def pos_count(list: List[int]) -> int:
    """
	Write a python function to count the number of positive numbers in a list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, -2, 3, -4]) == 2
    assert candidate([3, 4, 5, -1]) == 3
    assert candidate([1, 2, 3, 4]) == 4

def test_check():
    check(pos_count)

