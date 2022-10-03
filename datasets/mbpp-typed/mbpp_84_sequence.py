from typing import List, Dict, Tuple

def sequence(n: int) -> int:
    """
	Write a function to find the nth number in the newman conway sequence.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 6
    assert candidate(2) == 1
    assert candidate(3) == 2

def test_check():
    check(sequence)

