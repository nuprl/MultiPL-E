from typing import List, Dict, Tuple

def union_elements(test_tup1: Tuple[int], test_tup2: Tuple[int]) -> Tuple[int]:
    """
	Write a function to find the union of the elements of two given tuples and output them in sorted order.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((3, 4, 5, 6), (5, 7, 4, 10)) == (3, 4, 5, 6, 7, 10)
    assert candidate((1, 2, 3, 4), (3, 4, 5, 6)) == (1, 2, 3, 4, 5, 6)
    assert candidate((11, 12, 13, 14), (13, 15, 16, 17)) == (11, 12, 13, 14, 15, 16, 17)

def test_check():
    check(union_elements)

