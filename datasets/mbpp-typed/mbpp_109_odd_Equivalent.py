from typing import List, Dict, Tuple

def odd_Equivalent(s: str, n: int) -> int:
    """
	Write a python function to find the number of numbers with an odd value when rotating a binary string the given number of times.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('011001', 6) == 3
    assert candidate('11011', 5) == 4
    assert candidate('1010', 4) == 2

def test_check():
    check(odd_Equivalent)

