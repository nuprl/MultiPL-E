from typing import List, Dict, Tuple

def comb_sort(nums: List[int]) -> List[int]:
    """
	Write a function to sort a list of elements.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 15, 37, 25, 79]) == [5, 15, 25, 37, 79]
    assert candidate([41, 32, 15, 19, 22]) == [15, 19, 22, 32, 41]
    assert candidate([99, 15, 13, 47]) == [13, 15, 47, 99]

def test_check():
    check(comb_sort)

