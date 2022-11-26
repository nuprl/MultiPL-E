from typing import List, Dict, Tuple

def check_smaller(test_tup1: Tuple[int, int, int], test_tup2: Tuple[int, int, int]) -> bool:
    """
	Write a function to check if each element of second tuple is smaller than its corresponding element in the first tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((1, 2, 3), (2, 3, 4)) == False
    assert candidate((4, 5, 6), (3, 4, 5)) == True
    assert candidate((11, 12, 13), (10, 11, 12)) == True

def test_check():
    check(check_smaller)

