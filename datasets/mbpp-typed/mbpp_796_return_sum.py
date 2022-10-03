from typing import List, Dict, Tuple

def return_sum(dict: Dict[str, int]) -> int:
    """
	Write function to find the sum of all items in the given dictionary.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate({'a': 100, 'b': 200, 'c': 300}) == 600
    assert candidate({'a': 25, 'b': 18, 'c': 45}) == 88
    assert candidate({'a': 36, 'b': 39, 'c': 49}) == 124

def test_check():
    check(return_sum)

