from typing import List, Dict, Tuple

def check_monthnumb_number(monthnum2: int) -> bool:
    """
	Write a function to check whether the given month number contains 31 days or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == True
    assert candidate(2) == False
    assert candidate(6) == False

def test_check():
    check(check_monthnumb_number)

