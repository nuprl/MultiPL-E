from typing import List, Dict, Tuple

def count_no_of_ways(n: int, k: int) -> int:
    """
	Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2, 4) == 16
    assert candidate(3, 2) == 6
    assert candidate(4, 4) == 228

def test_check():
    check(count_no_of_ways)

