from typing import List, Dict, Tuple

def neg_nos(list1: List[int]) -> List[int]:
    """
	Write a python function to return the negative numbers in a list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([-1, 4, 5, -6]) == [-1, -6]
    assert candidate([-1, -2, 3, 4]) == [-1, -2]
    assert candidate([-7, -6, 8, 9]) == [-7, -6]

def test_check():
    check(neg_nos)

