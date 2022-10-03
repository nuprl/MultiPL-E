from typing import List, Dict, Tuple

def two_unique_nums(nums: List[int]) -> List[int]:
    """
	Write a python function to remove duplicate numbers from a given number of lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 2, 3, 4, 5]) == [1, 4, 5]
    assert candidate([1, 2, 3, 2, 4, 5]) == [1, 3, 4, 5]
    assert candidate([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5]

def test_check():
    check(two_unique_nums)

