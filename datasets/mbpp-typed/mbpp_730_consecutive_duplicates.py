from typing import List, Dict, Tuple

def consecutive_duplicates(nums: List[Any]) -> List[Any]:
    """
	Write a function to remove consecutive duplicates of a given list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([0, 0, 1, 2, 3, 4, 4, 5, 6, 6, 6, 7, 8, 9, 4, 4]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 4]
    assert candidate([10, 10, 15, 19, 18, 18, 17, 26, 26, 17, 18, 10]) == [10, 15, 19, 18, 17, 26, 17, 18, 10]
    assert candidate(['a', 'a', 'b', 'c', 'd', 'd']) == ['a', 'b', 'c', 'd']
    assert candidate(['a', 'a', 'b', 'c', 'd', 'd', 'a', 'a']) == ['a', 'b', 'c', 'd', 'a']

def test_check():
    check(consecutive_duplicates)

