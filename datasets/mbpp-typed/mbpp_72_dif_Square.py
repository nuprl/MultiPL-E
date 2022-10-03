from typing import List, Dict, Tuple

def dif_Square(n: int) -> bool:
    """
	Write a python function to check whether the given number can be represented as the difference of two squares or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == True
    assert candidate(10) == False
    assert candidate(15) == True

def test_check():
    check(dif_Square)

