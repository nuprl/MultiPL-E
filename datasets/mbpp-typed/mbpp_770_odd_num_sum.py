from typing import List, Dict, Tuple

def odd_num_sum(n: int) -> int:
    """
	Write a python function to find the sum of fourth power of first n odd natural numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2) == 82
    assert candidate(3) == 707
    assert candidate(4) == 3108

def test_check():
    check(odd_num_sum)

