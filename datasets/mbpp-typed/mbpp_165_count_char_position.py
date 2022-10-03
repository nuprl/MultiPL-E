from typing import List, Dict, Tuple

def count_char_position(str1: str) -> int:
    """
	Write a function to count the number of characters in a string that occur at the same position in the string as in the English alphabet (case insensitive).
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('xbcefg') == 2
    assert candidate('ABcED') == 3
    assert candidate('AbgdeF') == 5

def test_check():
    check(count_char_position)

