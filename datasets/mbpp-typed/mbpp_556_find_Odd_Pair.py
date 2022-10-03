from typing import List, Dict, Tuple

def find_Odd_Pair(A: List[int], N: int) -> int:
    """
	Write a python function to count the number of pairs whose xor value is odd.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([5, 4, 7, 2, 1], 5) == 6
    assert candidate([7, 2, 8, 1, 0, 5, 11], 7) == 12
    assert candidate([1, 2, 3], 3) == 2

def test_check():
    check(find_Odd_Pair)

