from typing import List, Dict, Tuple

def drop_empty(dict1: Dict[str, Optional[str]]) -> Dict[str, str]:
    """
	Write a function to drop empty items from a given dictionary.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate({'c1': 'Red', 'c2': 'Green', 'c3': None}) == {'c1': 'Red', 'c2': 'Green'}
    assert candidate({'c1': 'Red', 'c2': None, 'c3': None}) == {'c1': 'Red'}
    assert candidate({'c1': None, 'c2': 'Green', 'c3': None}) == {'c2': 'Green'}

def test_check():
    check(drop_empty)

