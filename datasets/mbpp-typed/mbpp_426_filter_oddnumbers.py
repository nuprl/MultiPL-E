from typing import List, Dict, Tuple

def filter_oddnumbers(nums: List[int]) -> List[int]:
    """
	Write a function to filter odd numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) == [1, 3, 5, 7, 9]
    assert candidate([10, 20, 45, 67, 84, 93]) == [45, 67, 93]
    assert candidate([5, 7, 9, 8, 6, 4, 3]) == [5, 7, 9, 3]

def test_check():
    check(filter_oddnumbers)

