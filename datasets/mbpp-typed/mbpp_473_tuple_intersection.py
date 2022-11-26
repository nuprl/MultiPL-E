from typing import List, Dict, Tuple

def tuple_intersection(test_list1: List[Tuple[int, int]], test_list2: List[Tuple[int, int]]) -> Set[Tuple[int, int]]:
    """
	Write a function to find the tuple intersection of elements in the given tuple list irrespective of their order.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([(3, 4), (5, 6), (9, 10), (4, 5)], [(5, 4), (3, 4), (6, 5), (9, 11)]) == {(4, 5), (3, 4), (5, 6)}
    assert candidate([(4, 1), (7, 4), (11, 13), (17, 14)], [(1, 4), (7, 4), (16, 12), (10, 13)]) == {(4, 7), (1, 4)}
    assert candidate([(2, 1), (3, 2), (1, 3), (1, 4)], [(11, 2), (2, 3), (6, 2), (1, 3)]) == {(1, 3), (2, 3)}

def test_check():
    check(tuple_intersection)

