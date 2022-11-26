from typing import List, Dict, Tuple

def remove_nested(test_tup: Any) -> Tuple[int, int, int, int]:
    """
	Write a function to remove tuples from the given tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((1, 5, 7, (4, 6), 10)) == (1, 5, 7, 10)
    assert candidate((2, 6, 8, (5, 7), 11)) == (2, 6, 8, 11)
    assert candidate((3, 7, 9, (6, 8), 12)) == (3, 7, 9, 12)
    assert candidate((3, 7, 9, (6, 8), (5, 12), 12)) == (3, 7, 9, 12)

def test_check():
    check(remove_nested)

