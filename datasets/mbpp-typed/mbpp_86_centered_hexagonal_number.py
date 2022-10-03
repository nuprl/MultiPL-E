from typing import List, Dict, Tuple

def centered_hexagonal_number(n: int) -> int:
    """
	Write a function to find nth centered hexagonal number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 271
    assert candidate(2) == 7
    assert candidate(9) == 217

def test_check():
    check(centered_hexagonal_number)

