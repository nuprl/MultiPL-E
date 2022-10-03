from typing import List, Dict, Tuple

def sum_in_range(l: int, r: int) -> int:
    """
	Write a python function to find the sum of all odd natural numbers within the range l and r.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2, 5) == 8
    assert candidate(5, 7) == 12
    assert candidate(7, 13) == 40

def test_check():
    check(sum_in_range)

