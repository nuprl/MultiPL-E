from typing import List, Dict, Tuple

def text_match_wordz(text: str) -> bool:
    """
	Write a function that matches a word containing 'z'.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('pythonz.') == True
    assert candidate('xyz.') == True
    assert candidate('  lang  .') == False

def test_check():
    check(text_match_wordz)

