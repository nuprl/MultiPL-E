from typing import List, Dict, Tuple

def parabola_directrix(a: int, b: int, c: int) -> int:
    """
	Write a function to find the directrix of a parabola.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5, 3, 2) == -198
    assert candidate(9, 8, 4) == -2336
    assert candidate(2, 4, 6) == -130

def test_check():
    check(parabola_directrix)

