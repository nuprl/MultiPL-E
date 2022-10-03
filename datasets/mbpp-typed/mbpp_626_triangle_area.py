from typing import List, Dict, Tuple

def triangle_area(r: int) -> Optional[int]:
    """
	Write a python function to find the area of the largest triangle that can be inscribed in a semicircle with a given radius.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(-1) == None
    assert candidate(0) == 0
    assert candidate(2) == 4

def test_check():
    check(triangle_area)

