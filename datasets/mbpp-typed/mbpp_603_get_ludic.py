from typing import List, Dict, Tuple

def get_ludic(n: int) -> List[int]:
    """
	Write a function to get all lucid numbers smaller than or equal to a given integer.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(10) == [1, 2, 3, 5, 7]
    assert candidate(25) == [1, 2, 3, 5, 7, 11, 13, 17, 23, 25]
    assert candidate(45) == [1, 2, 3, 5, 7, 11, 13, 17, 23, 25, 29, 37, 41, 43]

def test_check():
    check(get_ludic)

