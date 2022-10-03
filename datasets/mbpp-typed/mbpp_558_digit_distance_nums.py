from typing import List, Dict, Tuple

def digit_distance_nums(n1: int, n2: int) -> int:
    """
	Write a python function to find the sum of the per-digit difference between two integers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 2) == 1
    assert candidate(23, 56) == 6
    assert candidate(123, 256) == 7

def test_check():
    check(digit_distance_nums)

