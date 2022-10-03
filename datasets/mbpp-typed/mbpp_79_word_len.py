from typing import List, Dict, Tuple

def word_len(s: str) -> bool:
    """
	Write a python function to check whether the length of the word is odd or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('Hadoop') == False
    assert candidate('great') == True
    assert candidate('structure') == True

def test_check():
    check(word_len)

