from typing import List, Dict, Tuple

def concatenate_tuple(test_tup: Tuple[str, str, int, str]) -> str:
    """
	Write a function to concatenate each element of tuple by the delimiter.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(('ID', 'is', 4, 'UTS')) == 'ID-is-4-UTS'
    assert candidate(('QWE', 'is', 4, 'RTY')) == 'QWE-is-4-RTY'
    assert candidate(('ZEN', 'is', 4, 'OP')) == 'ZEN-is-4-OP'

def test_check():
    check(concatenate_tuple)

