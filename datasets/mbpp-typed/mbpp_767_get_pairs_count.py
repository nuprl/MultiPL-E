from typing import List, Dict, Tuple

def get_pairs_count(arr: List[int], sum: int) -> int:
    """
	Write a python function to count the number of pairs whose sum is equal to ‘sum’. The funtion gets as input a list of numbers and the sum,
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 1, 1, 1], 2) == 6
    assert candidate([1, 5, 7, -1, 5], 6) == 3
    assert candidate([1, -2, 3], 1) == 1
    assert candidate([-1, -2, 3], -3) == 1

def test_check():
    check(get_pairs_count)

