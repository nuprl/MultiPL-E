from typing import List, Dict, Tuple

def minimum(a: int, b: int) -> int:
    """
	Write a python function to find the minimum of two numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 2) == 1
    assert candidate(-5, -4) == -5
    assert candidate(0, 0) == 0

def test_check():
    check(minimum)

