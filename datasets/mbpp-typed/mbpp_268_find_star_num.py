from typing import List, Dict, Tuple

def find_star_num(n: int) -> int:
    """
	Write a function to find the n'th star number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3) == 37
    assert candidate(4) == 73
    assert candidate(5) == 121

def test_check():
    check(find_star_num)

