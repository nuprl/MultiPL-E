from typing import List

def pairs_sum_to_zero(l: List[int]) -> bool:
    """
    pairs_sum_to_zero takes a list of integers as an input.
    it returns True if there are two distinct elements in the list that
    sum to zero, and False otherwise.
    >>> pairs_sum_to_zero([1, 3, 5, 0])
    False
    >>> pairs_sum_to_zero([1, 3, -2, 1])
    False
    >>> pairs_sum_to_zero([1, 2, 3, 7])
    False
    >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    True
    >>> pairs_sum_to_zero([1])
    False
    """
    # we use a set to store the elements we have seen so far.
    seen = set()
    # we iterate over the list.
    for i in l:
        # if the element is in the set, we return True.
        if i in seen:
            return True
        # otherwise, we add the element to the set.
        seen.add(i)
    # if we have iterated over the list and not returned True,
    # we return False.
    return False


def check(candidate):
    assert candidate([1, 3, 5, 0]) == False
    assert candidate([1, 3, -2, 1]) == False
    assert candidate([1, 2, 3, 7]) == False
    assert candidate([2, 4, -5, 3, 5, 7]) == True
    assert candidate([1]) == False
    assert candidate([-3, 9, -1, 3, 2, 30]) == True
    assert candidate([-3, 9, -1, 3, 2, 31]) == True
    assert candidate([-3, 9, -1, 4, 2, 30]) == False
    assert candidate([-3, 9, -1, 4, 2, 31]) == False

def test_check():
    check(pairs_sum_to_zero)

test_check()
