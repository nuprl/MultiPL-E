from typing import List, Dict, Tuple

def check_monthnumber_number(monthnum3: int) -> bool:
    """
	Write a function to check whether the given month number contains 30 days or not. Months are given as number from 1 to 12.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(6) == True
    assert candidate(2) == False
    assert candidate(12) == False

def test_check():
    check(check_monthnumber_number)

