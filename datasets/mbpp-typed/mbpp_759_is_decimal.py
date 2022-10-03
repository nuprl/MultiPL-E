from typing import List, Dict, Tuple

def is_decimal(num: str) -> bool:
    """
	Write a function to check whether a given string is a decimal number with a precision of 2.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('123.11') == True
    assert candidate('e666.86') == False
    assert candidate('3.124587') == False
    assert candidate('1.11') == True
    assert candidate('1.1.11') == False

def test_check():
    check(is_decimal)

