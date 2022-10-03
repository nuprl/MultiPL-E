from typing import List, Dict, Tuple

def cal_sum(n: int) -> int:
    """
	Write a function to calculate the sum of perrin numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(9) == 49
    assert candidate(10) == 66
    assert candidate(11) == 88

def test_check():
    check(cal_sum)

