from typing import List, Dict, Tuple

def is_num_decagonal(n: int) -> int:
    """
	Write a function to find the nth decagonal number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3) == 27
    assert candidate(7) == 175
    assert candidate(10) == 370

def test_check():
    check(is_num_decagonal)

