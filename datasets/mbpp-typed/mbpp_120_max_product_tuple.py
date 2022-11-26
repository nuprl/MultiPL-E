from typing import List, Dict, Tuple

def max_product_tuple(list1: List[Tuple[int, int]]) -> int:
    """
	Write a function to find the maximum absolute product between numbers in pairs of tuples within a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([(2, 7), (2, 6), (1, 8), (4, 9)]) == 36
    assert candidate([(10, 20), (15, 2), (5, 10)]) == 200
    assert candidate([(11, 44), (10, 15), (20, 5), (12, 9)]) == 484

def test_check():
    check(max_product_tuple)

