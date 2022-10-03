from typing import List, Dict, Tuple

def divisible_by_digits(startnum: int, endnum: int) -> List[int]:
    """
	Write a function to find numbers within a given range from startnum ti endnum where every number is divisible by every digit it contains. https://www.w3resource.com/python-exercises/lambda/python-lambda-exercise-24.php
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 22) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
    assert candidate(1, 15) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15]
    assert candidate(20, 25) == [22, 24]

def test_check():
    check(divisible_by_digits)

