from typing import List, Dict, Tuple

def text_lowercase_underscore(text: str) -> bool:
    """
	Write a function to that returns true if the input string contains sequences of lowercase letters joined with an underscore and false otherwise.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('aab_cbbbc') == True
    assert candidate('aab_Abbbc') == False
    assert candidate('Aaab_abbbc') == False

def test_check():
    check(text_lowercase_underscore)

