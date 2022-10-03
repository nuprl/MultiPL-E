from typing import List, Dict, Tuple

def remove_dirty_chars(string: str, second_string: str) -> str:
    """
	Write a function to remove characters from the first string which are present in the second string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('probasscurve', 'pros') == 'bacuve'
    assert candidate('digitalindia', 'talent') == 'digiidi'
    assert candidate('exoticmiles', 'toxic') == 'emles'

def test_check():
    check(remove_dirty_chars)

