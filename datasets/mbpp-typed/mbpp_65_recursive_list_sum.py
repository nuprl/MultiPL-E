from typing import List, Dict, Tuple

def recursive_list_sum(data_list: List[Union[int, List[int]]]) -> int:
    """
	Write a function to flatten a list and sum all of its elements.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, [3, 4], [5, 6]]) == 21
    assert candidate([7, 10, [15, 14], [19, 41]]) == 106
    assert candidate([10, 20, [30, 40], [50, 60]]) == 210

def test_check():
    check(recursive_list_sum)

