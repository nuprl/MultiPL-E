from typing import List, Dict, Tuple

def count_Primes_nums(n: int) -> int:
    """
	Write a python function that takes in a non-negative number and returns the number of prime numbers less than the given non-negative number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == 2
    assert candidate(10) == 4
    assert candidate(100) == 25

def test_check():
    check(count_Primes_nums)

