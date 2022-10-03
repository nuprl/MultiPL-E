from typing import List, Dict, Tuple

def count_list(input_list: List[List[int]]) -> int:
    """
	Write a python function to count the number of lists in a given number of lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 3], [5, 7], [9, 11], [13, 15, 17]]) == 4
    assert candidate([[1, 2], [2, 3], [4, 5]]) == 3
    assert candidate([[1, 0], [2, 0]]) == 2

def test_check():
    check(count_list)

