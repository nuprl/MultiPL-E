from typing import List, Dict, Tuple

def opposite_Signs(x: int, y: int) -> bool:
    """
	Write a python function to check whether the given two integers have opposite sign or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, -2) == True
    assert candidate(3, 2) == False
    assert candidate(-10, -10) == False
    assert candidate(-2, 2) == True

def test_check():
    check(opposite_Signs)

