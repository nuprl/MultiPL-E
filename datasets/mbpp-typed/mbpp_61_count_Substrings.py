from typing import List, Dict, Tuple

def count_Substrings(s: str) -> int:
    """
	Write a python function to count the number of substrings with the sum of digits equal to their length.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('112112') == 6
    assert candidate('111') == 6
    assert candidate('1101112') == 12

def test_check():
    check(count_Substrings)

