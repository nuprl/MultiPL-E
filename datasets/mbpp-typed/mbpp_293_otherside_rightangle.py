from typing import List, Dict, Tuple

def otherside_rightangle(w: int, h: int) -> float:
    """
	Write a function to find the third side of a right angled triangle.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(7, 8) == 10.63014581273465
    assert candidate(3, 4) == 5
    assert candidate(7, 15) == 16.55294535724685

def test_check():
    check(otherside_rightangle)

