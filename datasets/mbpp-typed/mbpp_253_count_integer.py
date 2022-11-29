from typing import List, Dict, Tuple

def count_integer(list1: List[Union[int, str, float]]) -> int:
    """
	Write a python function that returns the number of integer elements in a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 'abc', 1.2]) == 2
    assert candidate([1, 2, 3]) == 3
    assert candidate([1, 1.2, 4, 5.1]) == 2

def test_check():
    check(count_integer)

