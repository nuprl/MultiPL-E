from typing import List, Dict, Tuple

def max_length(list1: List[List[int]]) -> Tuple[int, List[int]]:
    """
	Write a function to find the list of maximum length in a list of lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[0], [1, 3], [5, 7], [9, 11], [13, 15, 17]]) == (3, [13, 15, 17])
    assert candidate([[1], [5, 7], [10, 12, 14, 15]]) == (4, [10, 12, 14, 15])
    assert candidate([[5], [15, 20, 25]]) == (3, [15, 20, 25])

def test_check():
    check(max_length)

