from typing import List, Dict, Tuple

def sum_series(n: int) -> int:
    """
	Write a function to calculate the sum (n - 2*i) from i=0 to n // 2, for instance n + (n-2) + (n-4)... (until n-x =< 0).
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(6) == 12
    assert candidate(10) == 30
    assert candidate(9) == 25

def test_check():
    check(sum_series)

