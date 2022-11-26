from typing import List, Dict, Tuple

def trim_tuple(test_list: List[List[int]], K: int) -> List[List[int]]:
    """
	Write a function to trim each list by k in the given lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[5, 3, 2, 1, 4], [3, 4, 9, 2, 1], [9, 1, 2, 3, 5], [4, 8, 2, 1, 7]], 2) == [[2], [9], [2], [2]]
    assert candidate([[5, 3, 2, 1, 4], [3, 4, 9, 2, 1], [9, 1, 2, 3, 5], [4, 8, 2, 1, 7]], 1) == [[3, 2, 1], [4, 9, 2], [1, 2, 3], [8, 2, 1]]
    assert candidate([[7, 8, 4, 9], [11, 8, 12, 4], [4, 1, 7, 8], [3, 6, 9, 7]], 1) == [[8, 4], [8, 12], [1, 7], [6, 9]]

def test_check():
    check(trim_tuple)

