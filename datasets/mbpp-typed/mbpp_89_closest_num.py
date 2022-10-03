from typing import List, Dict, Tuple

def closest_num(N: int) -> int:
    """
	Write a function to find the closest smaller number than n.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(11) == 10
    assert candidate(7) == 6
    assert candidate(12) == 11

def test_check():
    check(closest_num)

