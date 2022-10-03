from typing import List, Dict, Tuple

def rectangle_area(l: int, b: int) -> int:
    """
	Write a function to find the area of a rectangle.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 20) == 200
    assert candidate(10, 5) == 50
    assert candidate(4, 2) == 8

def test_check():
    check(rectangle_area)

