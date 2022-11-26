from typing import List, Dict, Tuple

def tuple_to_int(nums: Tuple[int, int, int]) -> int:
    """
	Write a function to convert a given tuple of positive integers into a single integer.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((1, 2, 3)) == 123
    assert candidate((4, 5, 6)) == 456
    assert candidate((5, 6, 7)) == 567

def test_check():
    check(tuple_to_int)

