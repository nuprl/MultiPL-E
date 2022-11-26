from typing import List, Dict, Tuple

def extract_freq(test_list: List[Tuple[int, int]]) -> int:
    """
	Write a function to extract the number of unique tuples in the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([(3, 4), (1, 2), (4, 3), (5, 6)]) == 3
    assert candidate([(4, 15), (2, 3), (5, 4), (6, 7)]) == 4
    assert candidate([(5, 16), (2, 3), (6, 5), (6, 9)]) == 4

def test_check():
    check(extract_freq)

