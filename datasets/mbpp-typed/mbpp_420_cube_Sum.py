from typing import List, Dict, Tuple

def cube_Sum(n: int) -> int:
    """
	Write a python function to find the cube sum of first n even natural numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2) == 72
    assert candidate(3) == 288
    assert candidate(4) == 800

def test_check():
    check(cube_Sum)

