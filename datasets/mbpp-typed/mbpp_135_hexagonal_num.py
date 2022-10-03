from typing import List, Dict, Tuple

def hexagonal_num(n: int) -> int:
    """
	Write a function to find the nth hexagonal number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 190
    assert candidate(5) == 45
    assert candidate(7) == 91

def test_check():
    check(hexagonal_num)

