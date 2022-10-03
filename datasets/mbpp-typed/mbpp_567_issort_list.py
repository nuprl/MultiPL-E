from typing import List, Dict, Tuple

def issort_list(list1: List[int]) -> bool:
    """
	Write a function to check whether a specified list is sorted or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 4, 6, 8, 10, 12, 14, 16, 17]) == True
    assert candidate([1, 2, 4, 6, 8, 10, 12, 14, 20, 17]) == False
    assert candidate([1, 2, 4, 6, 8, 10, 15, 14, 20]) == False

def test_check():
    check(issort_list)

