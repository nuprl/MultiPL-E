from typing import List, Dict, Tuple

def is_octagonal(n: int) -> int:
    """
	Write a function to find the nth octagonal number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == 65
    assert candidate(10) == 280
    assert candidate(15) == 645

def test_check():
    check(is_octagonal)

