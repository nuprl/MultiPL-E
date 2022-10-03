from typing import List, Dict, Tuple

def max_sum_list(lists: List[List[int]]) -> List[int]:
    """
	Write a function that returns the list in a list of lists whose sum of elements is the highest.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 2, 3], [4, 5, 6], [10, 11, 12], [7, 8, 9]]) == [10, 11, 12]
    assert candidate([[3, 2, 1], [6, 5, 4], [12, 11, 10]]) == [12, 11, 10]
    assert candidate([[2, 3, 1]]) == [2, 3, 1]

def test_check():
    check(max_sum_list)

