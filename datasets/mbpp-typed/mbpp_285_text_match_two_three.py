from typing import List, Dict, Tuple

def text_match_two_three(text: str) -> bool:
    """
	Write a function that checks whether a string contains the 'a' character followed by two or three 'b' characters.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('ac') == False
    assert candidate('dc') == False
    assert candidate('abbbba') == True

def test_check():
    check(text_match_two_three)

