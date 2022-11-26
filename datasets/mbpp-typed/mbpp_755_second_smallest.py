from typing import List, Dict, Tuple

def second_smallest(numbers: List[Union[int, float]]) -> Optional[float]:
    """
	Write a function to find the second smallest number in a list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, -8, -2, 0, -2]) == -2
    assert candidate([1, 1, -0.5, 0, 2, -2, -2]) == -0.5
    assert candidate([2, 2]) == None
    assert candidate([2, 2, 2]) == None

def test_check():
    check(second_smallest)

