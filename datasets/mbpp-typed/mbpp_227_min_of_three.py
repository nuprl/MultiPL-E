from typing import List, Dict, Tuple

def min_of_three(a: int, b: int, c: int) -> int:
    """
	Write a function to find minimum of three numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 20, 0) == 0
    assert candidate(19, 15, 18) == 15
    assert candidate(-10, -20, -30) == -30

def test_check():
    check(min_of_three)

