from typing import List, Dict, Tuple

def count_bidirectional(test_list: List[Tuple[int, int]]) -> int:
    """
	Write a function to count bidirectional tuple pairs.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([(5, 6), (1, 2), (6, 5), (9, 1), (6, 5), (2, 1)]) == 3
    assert candidate([(5, 6), (1, 3), (6, 5), (9, 1), (6, 5), (2, 1)]) == 2
    assert candidate([(5, 6), (1, 2), (6, 5), (9, 2), (6, 5), (2, 1)]) == 4

def test_check():
    check(count_bidirectional)

