from typing import List, Dict, Tuple

def amicable_numbers_sum(limit: int) -> int:
    """
	Write a function to sum all amicable numbers from 1 to a specified number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(999) == 504
    assert candidate(9999) == 31626
    assert candidate(99) == 0

def test_check():
    check(amicable_numbers_sum)

