from typing import List, Dict, Tuple

def geometric_sum(n: int) -> float:
    """
	Write a function to calculate the geometric sum of n-1. https://www.w3resource.com/python-exercises/data-structures-and-algorithms/python-recursion-exercise-9.php
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(7) == 1.9921875
    assert candidate(4) == 1.9375
    assert candidate(8) == 1.99609375

def test_check():
    check(geometric_sum)

