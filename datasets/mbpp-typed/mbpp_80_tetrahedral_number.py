from typing import List, Dict, Tuple

def tetrahedral_number(n: int) -> int:
    """
	Write a function to find the nth tetrahedral number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == 35
    assert candidate(6) == 56
    assert candidate(7) == 84

def test_check():
    check(tetrahedral_number)

