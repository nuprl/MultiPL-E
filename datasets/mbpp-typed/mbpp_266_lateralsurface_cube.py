from typing import List, Dict, Tuple

def lateralsurface_cube(l: int) -> int:
    """
	Write a function to find the lateral surface area of a cube given its side length.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == 100
    assert candidate(9) == 324
    assert candidate(10) == 400

def test_check():
    check(lateralsurface_cube)

