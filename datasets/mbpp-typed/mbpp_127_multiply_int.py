from typing import List, Dict, Tuple

def multiply_int(x: int, y: int) -> int:
    """
	Write a function to multiply two integers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10, 20) == 200
    assert candidate(5, 10) == 50
    assert candidate(4, 8) == 32

def test_check():
    check(multiply_int)

