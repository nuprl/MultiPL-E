from typing import List, Dict, Tuple

def first_Digit(n: int) -> int:
    """
	Write a python function to find the first digit of a given number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(123) == 1
    assert candidate(456) == 4
    assert candidate(12) == 1

def test_check():
    check(first_Digit)

