from typing import List, Dict, Tuple

def lps(str: str) -> int:
    """
	Write a function to find the length of the longest palindromic subsequence in the given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('TENS FOR TENS') == 5
    assert candidate('CARDIO FOR CARDS') == 7
    assert candidate('PART OF THE JOURNEY IS PART') == 9

def test_check():
    check(lps)

