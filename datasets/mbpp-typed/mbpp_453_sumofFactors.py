from typing import List, Dict, Tuple

def sumofFactors(n: int) -> int:
    """
	Write a python function to find the sum of even factors of a number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(18) == 26
    assert candidate(30) == 48
    assert candidate(6) == 8

def test_check():
    check(sumofFactors)

