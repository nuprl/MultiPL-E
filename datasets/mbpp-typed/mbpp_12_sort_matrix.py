from typing import List, Dict, Tuple

def sort_matrix(M: List[List[int]]) -> List[List[int]]:
    """
	Write a function to sort a given matrix in ascending order according to the sum of its rows.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 2, 3], [2, 4, 5], [1, 1, 1]]) == [[1, 1, 1], [1, 2, 3], [2, 4, 5]]
    assert candidate([[1, 2, 3], [-2, 4, -5], [1, -1, 1]]) == [[-2, 4, -5], [1, -1, 1], [1, 2, 3]]
    assert candidate([[5, 8, 9], [6, 4, 3], [2, 1, 4]]) == [[2, 1, 4], [6, 4, 3], [5, 8, 9]]

def test_check():
    check(sort_matrix)

