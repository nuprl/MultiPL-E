from typing import List, Dict, Tuple

def count_charac(str1: str) -> int:
    """
	Write a function to count the total number of characters in a string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('python programming') == 18
    assert candidate('language') == 8
    assert candidate('words') == 5

def test_check():
    check(count_charac)

