from typing import List, Dict, Tuple

def Find_Min(lst: List[List[Any]]) -> List[Any]:
    """
	Write a python function to find the sublist having minimum length.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1], [1, 2], [1, 2, 3]]) == [1]
    assert candidate([[1, 1], [1, 1, 1], [1, 2, 7, 8]]) == [1, 1]
    assert candidate([['x'], ['x', 'y'], ['x', 'y', 'z']]) == ['x']

def test_check():
    check(Find_Min)

