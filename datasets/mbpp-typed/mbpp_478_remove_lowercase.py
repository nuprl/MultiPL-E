from typing import List, Dict, Tuple

def remove_lowercase(str1: str) -> str:
    """
	Write a function to remove lowercase substrings from a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('PYTHon') == 'PYTH'
    assert candidate('FInD') == 'FID'
    assert candidate('STRinG') == 'STRG'

def test_check():
    check(remove_lowercase)

