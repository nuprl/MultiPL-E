from typing import List, Dict, Tuple

def catalan_number(num: int) -> int:
    """
	Write a function which returns nth catalan number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == 16796
    assert candidate(9) == 4862
    assert candidate(7) == 429

def test_check():
    check(catalan_number)

