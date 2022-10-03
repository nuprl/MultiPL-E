from typing import List, Dict, Tuple

def text_match_wordz_middle(text: str) -> bool:
    """
	Write a function that checks if a strings contains 'z', except at the start and end of the word.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('pythonzabc.') == True
    assert candidate('zxyabc.') == False
    assert candidate('  lang  .') == False

def test_check():
    check(text_match_wordz_middle)

