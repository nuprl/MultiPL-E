from typing import List, Dict, Tuple

def even_position(nums: List[int]) -> bool:
    """
	Write a python function to check whether every even index contains even numbers of a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([3, 2, 1]) == False
    assert candidate([1, 2, 3]) == False
    assert candidate([2, 1, 4]) == True

def test_check():
    check(even_position)

