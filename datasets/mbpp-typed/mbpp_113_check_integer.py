from typing import List, Dict, Tuple

def check_integer(text: str) -> bool:
    """
	Write a function to check if a string represents an integer or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('python') == False
    assert candidate('1') == True
    assert candidate('12345') == True

def test_check():
    check(check_integer)

