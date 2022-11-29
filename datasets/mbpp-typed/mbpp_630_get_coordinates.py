from typing import List, Dict, Tuple

def get_coordinates(test_tup: Tuple[int, int]) -> List[List[int]]:
    """
	Write a function to extract all the adjacent coordinates of the given coordinate tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((3, 4)) == [[2, 3], [2, 4], [2, 5], [3, 3], [3, 4], [3, 5], [4, 3], [4, 4], [4, 5]]
    assert candidate((4, 5)) == [[3, 4], [3, 5], [3, 6], [4, 4], [4, 5], [4, 6], [5, 4], [5, 5], [5, 6]]
    assert candidate((5, 6)) == [[4, 5], [4, 6], [4, 7], [5, 5], [5, 6], [5, 7], [6, 5], [6, 6], [6, 7]]

def test_check():
    check(get_coordinates)

