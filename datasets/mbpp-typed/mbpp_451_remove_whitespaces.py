from typing import List, Dict, Tuple

def remove_whitespaces(text1: str) -> str:
    """
	Write a function to remove all whitespaces from the given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(' Google    Flutter ') == 'GoogleFlutter'
    assert candidate(' Google    Dart ') == 'GoogleDart'
    assert candidate(' iOS    Swift ') == 'iOSSwift'

def test_check():
    check(remove_whitespaces)

