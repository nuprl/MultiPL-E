from typing import List, Dict, Tuple

def text_starta_endb(text: str) -> bool:
    """
	Write a function that matches a string that has an 'a' followed by anything, ending in 'b'.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('aabbbb') == True
    assert candidate('aabAbbbc') == False
    assert candidate('accddbbjjj') == False

def test_check():
    check(text_starta_endb)

