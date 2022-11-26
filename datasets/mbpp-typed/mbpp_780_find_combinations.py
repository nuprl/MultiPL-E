from typing import List, Dict, Tuple

def find_combinations(test_list: List[Tuple[int, int]]) -> List[Tuple[int, int]]:
    """
	Write a function to find the combinations of sums with tuples in the given tuple list. https://www.geeksforgeeks.org/python-combinations-of-sum-with-tuples-in-tuple-list/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([(2, 4), (6, 7), (5, 1), (6, 10)]) == [(8, 11), (7, 5), (8, 14), (11, 8), (12, 17), (11, 11)]
    assert candidate([(3, 5), (7, 8), (6, 2), (7, 11)]) == [(10, 13), (9, 7), (10, 16), (13, 10), (14, 19), (13, 13)]
    assert candidate([(4, 6), (8, 9), (7, 3), (8, 12)]) == [(12, 15), (11, 9), (12, 18), (15, 12), (16, 21), (15, 15)]

def test_check():
    check(find_combinations)

