from typing import List, Dict, Tuple

def reverse_Array_Upto_K(input: List[int], k: int) -> List[int]:
    """
	Write a python function to reverse an array upto a given position.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4, 5, 6], 4) == [4, 3, 2, 1, 5, 6]
    assert candidate([4, 5, 6, 7], 2) == [5, 4, 6, 7]
    assert candidate([9, 8, 7, 6, 5], 3) == [7, 8, 9, 6, 5]

def test_check():
    check(reverse_Array_Upto_K)

