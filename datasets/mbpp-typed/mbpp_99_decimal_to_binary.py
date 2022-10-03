from typing import List, Dict, Tuple

def decimal_to_binary(n: int) -> str:
    """
	Write a function to convert the given decimal number to its binary equivalent, represented as a string with no leading zeros.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(8) == '1000'
    assert candidate(18) == '10010'
    assert candidate(7) == '111'

def test_check():
    check(decimal_to_binary)

