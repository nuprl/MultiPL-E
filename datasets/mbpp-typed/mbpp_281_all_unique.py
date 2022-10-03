from typing import List, Dict, Tuple

def all_unique(test_list: List[int]) -> bool:
    """
	Write a python function to check if the elements of a given list are unique or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3]) == True
    assert candidate([1, 2, 1, 2]) == False
    assert candidate([1, 2, 3, 4, 5]) == True

def test_check():
    check(all_unique)

