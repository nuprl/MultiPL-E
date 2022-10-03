from typing import List, Dict, Tuple

def perimeter_pentagon(a: int) -> int:
    """
	Write a function to find the perimeter of a regular pentagon from the length of its sides.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == 25
    assert candidate(10) == 50
    assert candidate(15) == 75

def test_check():
    check(perimeter_pentagon)

