from typing import List, Dict, Tuple

def check_str(string: str) -> bool:
    """
	Write a function to check whether the given string is starting with a vowel or not using regex.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('annie') == True
    assert candidate('dawood') == False
    assert candidate('Else') == True

def test_check():
    check(check_str)

