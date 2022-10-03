from typing import List, Dict, Tuple

def sum_list(lst1: List[int], lst2: List[int]) -> List[int]:
    """
	Write a function takes as input two lists [a_1,...,a_n], [b_1,...,b_n] and returns [a_1+b_1,...,a_n+b_n].
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([10, 20, 30], [15, 25, 35]) == [25, 45, 65]
    assert candidate([1, 2, 3], [5, 6, 7]) == [6, 8, 10]
    assert candidate([15, 20, 30], [15, 45, 75]) == [30, 65, 105]

def test_check():
    check(sum_list)

