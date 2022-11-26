from typing import List, Dict, Tuple

def split_two_parts(list1: List[Any], L: int) -> Any:
    """
	Write a function that takes in a list and an integer L and splits the given list into two parts where the length of the first part of the list is L, and returns the resulting lists in a tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 1, 2, 3, 4, 4, 5, 1], 3) == ([1, 1, 2], [3, 4, 4, 5, 1])
    assert candidate(['a', 'b', 'c', 'd'], 2) == (['a', 'b'], ['c', 'd'])
    assert candidate(['p', 'y', 't', 'h', 'o', 'n'], 4) == (['p', 'y', 't', 'h'], ['o', 'n'])

def test_check():
    check(split_two_parts)

