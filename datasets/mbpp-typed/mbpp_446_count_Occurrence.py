from typing import List, Dict, Tuple

def count_Occurrence(tup: Any, lst: List[Any]) -> int:
    """
	Write a python function to count the occurence of all elements of list in a tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(('a', 'a', 'c', 'b', 'd'), ['a', 'b']) == 3
    assert candidate((1, 2, 3, 1, 4, 6, 7, 1, 4), [1, 4, 7]) == 6
    assert candidate((1, 2, 3, 4, 5, 6), [1, 2]) == 2

def test_check():
    check(count_Occurrence)

