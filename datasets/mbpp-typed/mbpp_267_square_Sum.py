from typing import List, Dict, Tuple

def square_Sum(n: int) -> int:
    """
	Write a python function that takes in an integer n and returns the sum of the squares of the first n odd natural numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2) == 10
    assert candidate(3) == 35
    assert candidate(4) == 84

def test_check():
    check(square_Sum)

