from typing import List, Dict, Tuple

def is_nonagonal(n: int) -> int:
    """
	Write a function to find the nth nonagonal number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 325
    assert candidate(15) == 750
    assert candidate(18) == 1089

def test_check():
    check(is_nonagonal)

