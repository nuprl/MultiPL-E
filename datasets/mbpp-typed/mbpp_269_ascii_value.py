from typing import List, Dict, Tuple

def ascii_value(k: str) -> int:
    """
	Write a function to find the ascii value of a character.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('A') == 65
    assert candidate('R') == 82
    assert candidate('S') == 83

def test_check():
    check(ascii_value)

