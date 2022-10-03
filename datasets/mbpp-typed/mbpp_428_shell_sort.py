from typing import List, Dict, Tuple

def shell_sort(my_list: List[int]) -> List[int]:
    """
	Write a function to sort the given array by using shell sort.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([12, 23, 4, 5, 3, 2, 12, 81, 56, 95]) == [2, 3, 4, 5, 12, 12, 23, 56, 81, 95]
    assert candidate([24, 22, 39, 34, 87, 73, 68]) == [22, 24, 34, 39, 68, 73, 87]
    assert candidate([32, 30, 16, 96, 82, 83, 74]) == [16, 30, 32, 74, 82, 83, 96]

def test_check():
    check(shell_sort)

