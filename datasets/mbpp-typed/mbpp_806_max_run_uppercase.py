from typing import List, Dict, Tuple

def max_run_uppercase(test_str: str) -> int:
    """
	Write a function to find maximum run of uppercase characters in the given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('GeMKSForGERksISBESt') == 5
    assert candidate('PrECIOusMOVemENTSYT') == 6
    assert candidate('GooGLEFluTTER') == 4

def test_check():
    check(max_run_uppercase)

