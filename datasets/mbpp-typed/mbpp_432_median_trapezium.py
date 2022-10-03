from typing import List, Dict, Tuple

def median_trapezium(base1: int, base2: int, height: int) -> float:
    """
	Write a function to find the median length of a trapezium.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(15, 25, 35) == 20
    assert candidate(10, 20, 30) == 15
    assert candidate(6, 9, 4) == 7.5

def test_check():
    check(median_trapezium)

