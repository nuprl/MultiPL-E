from typing import List, Dict, Tuple

def difference(n: int) -> int:
    """
	Write a python function to find the difference between the sum of cubes of the first n natural numbers and the sum of the first n natural numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3) == 30
    assert candidate(5) == 210
    assert candidate(2) == 6

def test_check():
    check(difference)

