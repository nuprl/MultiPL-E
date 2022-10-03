from typing import List, Dict, Tuple

def test_duplicate(arraynums: List[int]) -> bool:
    """
	Write a function to find whether a given array of integers contains any duplicate element.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5]) == False
    assert candidate([1, 2, 3, 4, 4]) == True
    assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5]) == True

def test_check():
    check(test_duplicate)

