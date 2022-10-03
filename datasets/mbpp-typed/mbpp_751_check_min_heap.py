from typing import List, Dict, Tuple

def check_min_heap(arr: List[int]) -> bool:
    """
	Write a function to check if the given array represents min heap or not. https://www.geeksforgeeks.org/how-to-check-if-a-given-array-represents-a-binary-heap/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5, 6]) == True
    assert candidate([2, 3, 4, 5, 10, 15]) == True
    assert candidate([2, 10, 4, 5, 3, 15]) == False

def test_check():
    check(check_min_heap)

