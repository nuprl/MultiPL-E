from typing import List, Dict, Tuple

def is_lower(string: str) -> str:
    """
	Write a python function to convert the given string to lower case.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('InValid') == 'invalid'
    assert candidate('TruE') == 'true'
    assert candidate('SenTenCE') == 'sentence'

def test_check():
    check(is_lower)

