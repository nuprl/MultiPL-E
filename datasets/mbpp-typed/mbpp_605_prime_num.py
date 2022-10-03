from typing import List, Dict, Tuple

def prime_num(num: int) -> bool:
    """
	Write a function to check if the given integer is a prime number.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(13) == True
    assert candidate(7) == True
    assert candidate(-1010) == False

def test_check():
    check(prime_num)

