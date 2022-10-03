from typing import List, Dict, Tuple

def find_First_Missing(array: List[int]) -> int:
    """
	Write a python function to find the smallest missing number from a sorted list of natural numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([0, 1, 2, 3]) == 4
    assert candidate([0, 1, 2, 6, 9]) == 3
    assert candidate([2, 3, 5, 8, 9]) == 0

def test_check():
    check(find_First_Missing)

