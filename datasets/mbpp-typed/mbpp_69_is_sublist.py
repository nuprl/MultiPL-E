from typing import List, Dict, Tuple

def is_sublist(l: List[int], s: List[int]) -> bool:
    """
	Write a function to check whether a list contains the given sublist or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([2, 4, 3, 5, 7], [3, 7]) == False
    assert candidate([2, 4, 3, 5, 7], [4, 3]) == True
    assert candidate([2, 4, 3, 5, 7], [1, 6]) == False

def test_check():
    check(is_sublist)

