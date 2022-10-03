from typing import List, Dict, Tuple

def text_match_zero_one(text: str) -> bool:
    """
	Write a function that matches a string that has an 'a' followed by one or more 'b's. https://www.w3resource.com/python-exercises/re/python-re-exercise-3.php
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('ac') == False
    assert candidate('dc') == False
    assert candidate('abbbba') == True
    assert candidate('dsabbbba') == True
    assert candidate('asbbbba') == False
    assert candidate('abaaa') == True

def test_check():
    check(text_match_zero_one)

