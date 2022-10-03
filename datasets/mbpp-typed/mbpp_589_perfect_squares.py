from typing import List, Dict, Tuple

def perfect_squares(a: int, b: int) -> List[int]:
    """
	Write a function to find perfect squares between two given numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1, 30) == [1, 4, 9, 16, 25]
    assert candidate(50, 100) == [64, 81, 100]
    assert candidate(100, 200) == [100, 121, 144, 169, 196]

def test_check():
    check(perfect_squares)

