from typing import List, Dict, Tuple

def Extract(lst: List[List[int]]) -> List[int]:
    """
	Write a python function to get the first element of each sublist.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 2], [3, 4, 5], [6, 7, 8, 9]]) == [1, 3, 6]
    assert candidate([[1, 2, 3], [4, 5]]) == [1, 4]
    assert candidate([[9, 8, 1], [1, 2]]) == [9, 1]

def test_check():
    check(Extract)

