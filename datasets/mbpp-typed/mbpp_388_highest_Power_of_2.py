from typing import List, Dict, Tuple

def highest_Power_of_2(n: int) -> int:
    """
	Write a python function to find the highest power of 2 that is less than or equal to n.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 8
    assert candidate(19) == 16
    assert candidate(32) == 32

def test_check():
    check(highest_Power_of_2)

