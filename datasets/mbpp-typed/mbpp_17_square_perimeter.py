from typing import List, Dict, Tuple

def square_perimeter(a: int) -> int:
    """
	Write a function that returns the perimeter of a square given its side length as input.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 40
    assert candidate(5) == 20
    assert candidate(4) == 16

def test_check():
    check(square_perimeter)

