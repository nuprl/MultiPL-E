from typing import List, Dict, Tuple

def bell_Number(n: int) -> int:
    """
	Write a python function to find nth bell number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2) == 2
    assert candidate(3) == 5
    assert candidate(4) == 15

def test_check():
    check(bell_Number)

