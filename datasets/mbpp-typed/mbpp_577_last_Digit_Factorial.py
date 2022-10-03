from typing import List, Dict, Tuple

def last_Digit_Factorial(n: int) -> int:
    """
	Write a python function to find the last digit in factorial of a given number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(4) == 4
    assert candidate(21) == 0
    assert candidate(30) == 0

def test_check():
    check(last_Digit_Factorial)

