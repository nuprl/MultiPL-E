from typing import List, Dict, Tuple

def unique_sublists(list1: List[List[Any]]) -> Dict[Union[Tuple[int, int], Tuple[int, int, int], Tuple[str, str], Tuple[str]], int]:
    """
	Write a function to count the number of lists within a list. The function should return a dictionary, where every list is turned to a tuple, and the value of the tuple is the number of its occurrences.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([[1, 3], [5, 7], [1, 3], [13, 15, 17], [5, 7], [9, 11]]) == {(1, 3): 2, (5, 7): 2, (13, 15, 17): 1, (9, 11): 1}
    assert candidate([['green', 'orange'], ['black'], ['green', 'orange'], ['white']]) == {('green', 'orange'): 2, ('black',): 1, ('white',): 1}
    assert candidate([[1, 2], [3, 4], [4, 5], [6, 7]]) == {(1, 2): 1, (3, 4): 1, (4, 5): 1, (6, 7): 1}

def test_check():
    check(unique_sublists)

