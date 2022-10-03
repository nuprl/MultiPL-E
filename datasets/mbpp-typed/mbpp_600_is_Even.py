from typing import List, Dict, Tuple

def is_Even(n: int) -> bool:
    """
	Write a python function to check whether the given number is even or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1) == False
    assert candidate(2) == True
    assert candidate(3) == False

def test_check():
    check(is_Even)

