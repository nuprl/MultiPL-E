from typing import List, Dict, Tuple

def min_Swaps(str1: str, str2: str) -> Any:
    """
	Write a python function to count minimum number of swaps required to convert one binary number represented as a string to another.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('1101', '1110') == 1
    assert candidate('111', '000') == 'Not Possible'
    assert candidate('111', '110') == 'Not Possible'

def test_check():
    check(min_Swaps)

