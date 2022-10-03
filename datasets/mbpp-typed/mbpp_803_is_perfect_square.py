from typing import List, Dict, Tuple

def is_perfect_square(n: int) -> bool:
    """
	Write a function to check whether the given number is a perfect square or not. https://www.geeksforgeeks.org/check-if-given-number-is-perfect-square-in-cpp/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == False
    assert candidate(36) == True
    assert candidate(14) == False
    assert candidate(196) == True
    assert candidate(125) == False
    assert candidate(15625) == True

def test_check():
    check(is_perfect_square)

