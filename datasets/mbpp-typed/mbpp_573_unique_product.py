from typing import List, Dict, Tuple

def unique_product(list_data: List[int]) -> int:
    """
	Write a python function to calculate the product of the unique numbers in a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([10, 20, 30, 40, 20, 50, 60, 40]) == 720000000
    assert candidate([1, 2, 3, 1]) == 6
    assert candidate([7, 8, 9, 0, 1, 1]) == 0

def test_check():
    check(unique_product)

