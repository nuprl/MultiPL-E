from typing import List, Dict, Tuple

def dict_depth(d: Dict[Any, Union[int, Dict[str, Dict[str, Dict[None, None]]], Dict[str, str], str, Dict[int, Dict[int, str]]]]) -> int:
    """
	Write a function to find the depth of a dictionary.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate({'a': 1, 'b': {'c': {'d': {}}}}) == 4
    assert candidate({'a': 1, 'b': {'c': 'python'}}) == 2
    assert candidate({1: 'Sun', 2: {3: {4: 'Mon'}}}) == 3

def test_check():
    check(dict_depth)

