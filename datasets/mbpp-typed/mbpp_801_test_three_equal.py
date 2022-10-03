from typing import List, Dict, Tuple

def test_three_equal(x: int, y: int, z: int) -> int:
    """
	Write a python function to count the number of equal numbers from three given integers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 1, 1) == 3
    assert candidate(-1, -2, -3) == 0
    assert candidate(1, 2, 2) == 2

def test_check():
    check(test_three_equal)

