from typing import List, Dict, Tuple

def frequency(a: List[int], x: int) -> int:
    """
	Write a function to count the number of occurrences of a number in a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3], 4) == 0
    assert candidate([1, 2, 2, 3, 3, 3, 4], 3) == 3
    assert candidate([0, 1, 2, 3, 1, 2], 1) == 2

def test_check():
    check(frequency)

