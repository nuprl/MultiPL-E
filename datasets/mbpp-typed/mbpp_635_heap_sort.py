from typing import List, Dict, Tuple

def heap_sort(iterable: List[int]) -> List[int]:
    """
	Write a function to sort the given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 3, 5, 7, 9, 2, 4, 6, 8, 0]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    assert candidate([25, 35, 22, 85, 14, 65, 75, 25, 58]) == [14, 22, 25, 25, 35, 58, 65, 75, 85]
    assert candidate([7, 1, 9, 5]) == [1, 5, 7, 9]

def test_check():
    check(heap_sort)

