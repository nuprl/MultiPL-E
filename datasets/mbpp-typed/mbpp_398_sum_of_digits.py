from typing import List, Dict, Tuple

def sum_of_digits(nums: List[Any]) -> int:
    """
	Write a function to compute the sum of digits of each number of a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([10, 2, 56]) == 14
    assert candidate([[10, 20, 4, 5, 'b', 70, 'a']]) == 19
    assert candidate([10, 20, -4, 5, -70]) == 19

def test_check():
    check(sum_of_digits)

