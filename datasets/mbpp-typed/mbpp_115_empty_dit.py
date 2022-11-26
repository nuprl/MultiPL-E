from typing import List, Dict, Tuple

def empty_dit(list1: Any) -> bool:
    """
	Write a function to check whether all dictionaries in a list are empty or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([{}, {}, {}]) == True
    assert candidate([{1, 2}, {}, {}]) == False
    assert candidate({}) == True

def test_check():
    check(empty_dit)

