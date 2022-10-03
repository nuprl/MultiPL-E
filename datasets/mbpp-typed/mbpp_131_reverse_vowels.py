from typing import List, Dict, Tuple

def reverse_vowels(str1: str) -> str:
    """
	Write a python function to reverse only the vowels of a given string (where y is not a vowel).
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('Python') == 'Python'
    assert candidate('USA') == 'ASU'
    assert candidate('ab') == 'ab'

def test_check():
    check(reverse_vowels)

