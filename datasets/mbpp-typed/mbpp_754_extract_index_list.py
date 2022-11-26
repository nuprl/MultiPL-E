from typing import List, Dict, Tuple

def extract_index_list(l1: List[int], l2: List[int], l3: List[int]) -> List[Any]:
    """
	We say that an element is common for lists l1, l2, l3 if it appears in all three lists under the same index. Write a function to find common elements from three lists. The function should return a list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 1, 3, 4, 5, 6, 7], [0, 1, 2, 3, 4, 5, 7], [0, 1, 2, 3, 4, 5, 7]) == [1, 7]
    assert candidate([1, 1, 3, 4, 5, 6, 7], [0, 1, 2, 3, 4, 6, 5], [0, 1, 2, 3, 4, 6, 7]) == [1, 6]
    assert candidate([1, 1, 3, 4, 6, 5, 6], [0, 1, 2, 3, 4, 5, 7], [0, 1, 2, 3, 4, 5, 7]) == [1, 5]
    assert candidate([1, 2, 3, 4, 6, 6, 6], [0, 1, 2, 3, 4, 5, 7], [0, 1, 2, 3, 4, 5, 7]) == []

def test_check():
    check(extract_index_list)

