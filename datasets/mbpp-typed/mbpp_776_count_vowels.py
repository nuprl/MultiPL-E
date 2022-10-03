from typing import List, Dict, Tuple

def count_vowels(test_str: str) -> int:
    """
	Write a function to count those characters which have vowels as their neighbors in the given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('bestinstareels') == 7
    assert candidate('partofthejourneyistheend') == 12
    assert candidate('amazonprime') == 5

def test_check():
    check(count_vowels)

