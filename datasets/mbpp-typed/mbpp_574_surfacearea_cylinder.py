from typing import List, Dict, Tuple

def surfacearea_cylinder(r: int, h: int) -> float:
    """
	Write a function to find the surface area of a cylinder.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 5) == 942.45
    assert candidate(4, 5) == 226.18800000000002
    assert candidate(4, 10) == 351.848

def test_check():
    check(surfacearea_cylinder)

