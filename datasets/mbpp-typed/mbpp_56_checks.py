from typing import List, Dict, Tuple

def checks(n: int) -> bool:
    """
	Write a python function to check if a given number is one less than twice its reverse.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(70) == False
    assert candidate(23) == False
    assert candidate(73) == True

def test_check():
    check(checks)

