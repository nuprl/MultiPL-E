from typing import List, Dict, Tuple

def Diff(li1: List[int], li2: List[int]) -> List[int]:
    """
	Write a python function to get the difference between two lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([10, 15, 20, 25, 30, 35, 40], [25, 40, 35]) == [10, 20, 30, 15]
    assert candidate([1, 2, 3, 4, 5], [6, 7, 1]) == [2, 3, 4, 5, 6, 7]
    assert candidate([1, 2, 3], [6, 7, 1]) == [2, 3, 6, 7]

def test_check():
    check(Diff)

