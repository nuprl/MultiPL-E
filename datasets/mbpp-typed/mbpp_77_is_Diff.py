from typing import List, Dict, Tuple

def is_Diff(n: int) -> bool:
    """
	Write a python function to find whether a number is divisible by 11.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(12345) == False
    assert candidate(1212112) == True
    assert candidate(1212) == False

def test_check():
    check(is_Diff)

