from typing import List, Dict, Tuple

def left_rotate(n: int, d: int) -> int:
    """
	Write a function to that rotate left bits by d bits a given number. We assume that the number is 32 bit.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(16, 2) == 64
    assert candidate(10, 2) == 40
    assert candidate(99, 3) == 792
    assert candidate(99, 3) == 792
    assert candidate(1, 3) == 8
    assert candidate(5, 3) == 40
    assert candidate(29, 3) == 232

def test_check():
    check(left_rotate)

