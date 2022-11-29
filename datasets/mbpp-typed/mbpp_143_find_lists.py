from typing import List, Dict, Tuple

def find_lists(Input: List[Any]) -> int:
    """
	Write a function to find number of lists present in the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 2, 3, 4], [5, 6, 7, 8]]) == 2
    assert candidate([[1, 2], [3, 4], [5, 6]]) == 3
    assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1]) == 1

def test_check():
    check(find_lists)

