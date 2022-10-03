from typing import List, Dict, Tuple

def lateralsurface_cone(r: int, h: int) -> float:
    """
	Write a function to find the lateral surface area of a cone given radius r and the height h.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, 12) == 204.20352248333654
    assert candidate(10, 15) == 566.3586699569488
    assert candidate(19, 17) == 1521.8090132193388

def test_check():
    check(lateralsurface_cone)

