from typing import List, Dict, Tuple

def count_Set_Bits(n: int) -> int:
    """
	Write a python function to count the number of set bits (binary digits with value 1) in a given number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2) == 1
    assert candidate(4) == 1
    assert candidate(6) == 2

def test_check():
    check(count_Set_Bits)

