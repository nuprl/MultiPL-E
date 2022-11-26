from typing import List, Dict, Tuple

def add_lists(test_list: List[int], test_tup: Tuple[int, int]) -> Tuple[int, int, int, int, int]:
    """
	Write a function to append the given list to the given tuples.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 6, 7], (9, 10)) == (9, 10, 5, 6, 7)
    assert candidate([6, 7, 8], (10, 11)) == (10, 11, 6, 7, 8)
    assert candidate([7, 8, 9], (11, 12)) == (11, 12, 7, 8, 9)

def test_check():
    check(add_lists)

