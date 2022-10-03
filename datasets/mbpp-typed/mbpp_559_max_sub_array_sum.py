from typing import List, Dict, Tuple

def max_sub_array_sum(a: List[int], size: int) -> int:
    """
	Write a function to find the sum of the largest contiguous sublist in the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([-2, -3, 4, -1, -2, 1, 5, -3], 8) == 7
    assert candidate([-3, -4, 5, -2, -3, 2, 6, -4], 8) == 8
    assert candidate([-4, -5, 6, -3, -4, 3, 7, -5], 8) == 10

def test_check():
    check(max_sub_array_sum)

