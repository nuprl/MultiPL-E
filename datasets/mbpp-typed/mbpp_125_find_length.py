from typing import List, Dict, Tuple

def find_length(string: str) -> int:
    """
	Write a function to find the maximum difference between the number of 0s and number of 1s in any sub-string of the given binary string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('11000010001') == 6
    assert candidate('10111') == 1
    assert candidate('11011101100101') == 2

def test_check():
    check(find_length)

