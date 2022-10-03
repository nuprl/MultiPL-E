from typing import List, Dict, Tuple

def is_Monotonic(A: List[int]) -> bool:
    """
	Write a python function to check whether the given array is monotonic or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([6, 5, 4, 4]) == True
    assert candidate([1, 2, 2, 3]) == True
    assert candidate([1, 3, 2]) == False

def test_check():
    check(is_Monotonic)

