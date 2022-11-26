from typing import List, Dict, Tuple

def check_distinct(test_tup: List[int]) -> bool:
    """
	Write a function to check if given list contains no duplicates.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 4, 5, 6, 1, 4]) == False
    assert candidate([1, 4, 5, 6]) == True
    assert candidate([2, 3, 4, 5, 6]) == True

def test_check():
    check(check_distinct)

