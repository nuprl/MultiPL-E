from typing import List, Dict, Tuple

def find_lucas(n: int) -> int:
    """
	Write a function to find the n'th lucas number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(9) == 76
    assert candidate(4) == 7
    assert candidate(3) == 4

def test_check():
    check(find_lucas)

