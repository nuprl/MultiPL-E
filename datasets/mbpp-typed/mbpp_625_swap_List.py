from typing import List, Dict, Tuple

def swap_List(newList: List[int]) -> List[int]:
    """
	Write a python function to interchange the first and last element in a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3]) == [3, 2, 1]
    assert candidate([1, 2, 3, 4, 4]) == [4, 2, 3, 4, 1]
    assert candidate([4, 5, 6]) == [6, 5, 4]

def test_check():
    check(swap_List)

