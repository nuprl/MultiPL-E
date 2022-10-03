from typing import List, Dict, Tuple

def count_Pairs(arr: List[int], n: int) -> int:
    """
	Write a python function which takes a list of integers and counts the number of possible unordered pairs where both elements are unequal.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 1], 3) == 2
    assert candidate([1, 1, 1, 1], 4) == 0
    assert candidate([1, 2, 3, 4, 5], 5) == 10

def test_check():
    check(count_Pairs)

