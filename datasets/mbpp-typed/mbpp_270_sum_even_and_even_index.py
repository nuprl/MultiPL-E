from typing import List, Dict, Tuple

def sum_even_and_even_index(arr: List[int]) -> int:
    """
	Write a python function to find the sum of even numbers at even positions of a list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 6, 12, 1, 18, 8]) == 30
    assert candidate([3, 20, 17, 9, 2, 10, 18, 13, 6, 18]) == 26
    assert candidate([5, 6, 12, 1]) == 12

def test_check():
    check(sum_even_and_even_index)

