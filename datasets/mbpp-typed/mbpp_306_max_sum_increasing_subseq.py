from typing import List, Dict, Tuple

def max_sum_increasing_subseq(a: List[int], n: int, index: int, k: int) -> int:
    """
	Write a function to find the maximum sum of increasing subsequence from prefix until ith index and also including a given kth element which is after i, i.e., k > i .
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 101, 2, 3, 100, 4, 5], 7, 4, 6) == 11
    assert candidate([1, 101, 2, 3, 100, 4, 5], 7, 2, 5) == 7
    assert candidate([11, 15, 19, 21, 26, 28, 31], 7, 2, 4) == 71

def test_check():
    check(max_sum_increasing_subseq)

