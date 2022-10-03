from typing import List, Dict, Tuple

def power(a: int, b: int) -> int:
    """
	Write a function to calculate the value of 'a' to the power 'b'.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, 4) == 81
    assert candidate(2, 3) == 8
    assert candidate(5, 5) == 3125

def test_check():
    check(power)

