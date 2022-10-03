from typing import List, Dict, Tuple

def rearrange_bigger(n: int) -> Any:
    """
	Write a function to create the next bigger number by rearranging the digits of a given number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(12) == 21
    assert candidate(10) == False
    assert candidate(102) == 120

def test_check():
    check(rearrange_bigger)

