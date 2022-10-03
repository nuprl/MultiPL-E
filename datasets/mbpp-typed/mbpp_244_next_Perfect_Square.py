from typing import List, Dict, Tuple

def next_Perfect_Square(N: int) -> int:
    """
	Write a python function to find the next perfect square greater than a given number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(35) == 36
    assert candidate(6) == 9
    assert candidate(9) == 16

def test_check():
    check(next_Perfect_Square)

