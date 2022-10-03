from typing import List, Dict, Tuple

def is_upper(string: str) -> str:
    """
	Write a python function to convert a given string to uppercase.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('person') == 'PERSON'
    assert candidate('final') == 'FINAL'
    assert candidate('Valid') == 'VALID'

def test_check():
    check(is_upper)

