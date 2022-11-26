from typing import List, Dict, Tuple

def multiply_elements(test_tup: List[int]) -> List[Any]:
    """
	Write a function that takes as input a list of numbers (t_1,...,t_{N+1}) and returns a list of length N where the i-th element of the tuple is equal to t_i * t_{i+1}.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 5, 7, 8, 10]) == [5, 35, 56, 80]
    assert candidate([2, 4, 5, 6, 7]) == [8, 20, 30, 42]
    assert candidate([12, 13, 14, 9, 15]) == [156, 182, 126, 135]
    assert candidate([12]) == []

def test_check():
    check(multiply_elements)

