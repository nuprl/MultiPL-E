from typing import List, Dict, Tuple

def max_of_nth(test_list: List[List[int]], N: int) -> int:
    """
	Write a function which given a matrix represented as a list of lists returns the max of the n'th column.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[5, 6, 7], [1, 3, 5], [8, 9, 19]], 2) == 19
    assert candidate([[6, 7, 8], [2, 4, 6], [9, 10, 20]], 1) == 10
    assert candidate([[7, 8, 9], [3, 5, 7], [10, 11, 21]], 1) == 11

def test_check():
    check(max_of_nth)

