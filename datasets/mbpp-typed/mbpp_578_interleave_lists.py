from typing import List, Dict, Tuple

def interleave_lists(list1: List[int], list2: List[int], list3: List[int]) -> List[int]:
    """
	Write a function to interleave 3 lists of the same length into a single flat list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5, 6, 7], [10, 20, 30, 40, 50, 60, 70], [100, 200, 300, 400, 500, 600, 700]) == [1, 10, 100, 2, 20, 200, 3, 30, 300, 4, 40, 400, 5, 50, 500, 6, 60, 600, 7, 70, 700]
    assert candidate([10, 20], [15, 2], [5, 10]) == [10, 15, 5, 20, 2, 10]
    assert candidate([11, 44], [10, 15], [20, 5]) == [11, 10, 20, 44, 15, 5]

def test_check():
    check(interleave_lists)

