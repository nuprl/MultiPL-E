from typing import List, Dict, Tuple

def add_nested_tuples(test_tup1: List[List[int]], test_tup2: List[List[int]]) -> List[List[int]]:
    """
	Write a function to perform index wise addition of list elements in the given two nested lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 3], [4, 5], [2, 9], [1, 10]], [[6, 7], [3, 9], [1, 1], [7, 3]]) == [[7, 10], [7, 14], [3, 10], [8, 13]]
    assert candidate([[2, 4], [5, 6], [3, 10], [2, 11]], [[7, 8], [4, 10], [2, 2], [8, 4]]) == [[9, 12], [9, 16], [5, 12], [10, 15]]
    assert candidate([[3, 5], [6, 7], [4, 11], [3, 12]], [[8, 9], [5, 11], [3, 3], [9, 5]]) == [[11, 14], [11, 18], [7, 14], [12, 17]]

def test_check():
    check(add_nested_tuples)

