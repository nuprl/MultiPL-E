from typing import List, Dict, Tuple

def all_Characters_Same(s: str) -> bool:
    """
	Write a python function to check whether all the characters are same or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('python') == False
    assert candidate('aaa') == True
    assert candidate('data') == False

def test_check():
    check(all_Characters_Same)

