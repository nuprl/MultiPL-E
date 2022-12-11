from typing import List, Dict, Tuple

def count_first_elements(test_tup: List[Union[int, Tuple[int, int]]]) -> int:
    """
	Write a function to find the number of elements that occurs before the list element in the given tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 5, 7, (4, 6), 10]) == 3
    assert candidate([2, 9, (5, 7), 11]) == 2
    assert candidate([11, 15, 5, 8, (2, 3), 8]) == 4

def test_check():
    check(count_first_elements)

