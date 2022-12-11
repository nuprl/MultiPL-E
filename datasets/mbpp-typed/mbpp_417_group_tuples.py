from typing import List, Dict, Tuple

def group_tuples(Input: List[List[str]]) -> List[List[str]]:
    """
	Write a function to find common first element in given list of lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([['x', 'y'], ['x', 'z'], ['w', 't']]) == [['x', 'y', 'z'], ['w', 't']]
    assert candidate([['a', 'b'], ['a', 'c'], ['d', 'e']]) == [['a', 'b', 'c'], ['d', 'e']]
    assert candidate([['f', 'g'], ['f', 'g'], ['h', 'i']]) == [['f', 'g', 'g'], ['h', 'i']]

def test_check():
    check(group_tuples)

