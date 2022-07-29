from typing import List

def triples_sum_to_zero(l: List[int]) -> bool:
    """
    triples_sum_to_zero takes a list of integers as an input.
    it returns True if there are three distinct elements in the list that
    sum to zero, and False otherwise.

    >>> triples_sum_to_zero([1, 3, 5, 0])
    False
    >>> triples_sum_to_zero([1, 3, -2, 1])
    True
    >>> triples_sum_to_zero([1, 2, 3, 7])
    False
    >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
    True
    >>> triples_sum_to_zero([1])
    False
    """
    # return False #stub
    # return ...(l) #template
    #
    # Hint: use a set to find distinct elements.
    #
    # You can use a set to find distinct elements in a list:
    #
    #     >>> s = {1, 2, 3, 4}
    #     >>> s
    #     {1, 2, 3, 4}
    #     >>> s.add(5)
    #     >>> s
    #     {1, 2, 3, 4, 5}
    #     >>> s.add(1)
    #     >>> s
    #     {1, 2, 3, 4, 5}
    #
    # You can iterate over the distinct elements of a set using:
    #
    #     >>> for x in s:
    #     ...     print(x)
    #     ...
    #     1
    #     2
    #     3
    #     4
    #     5
    #
    # You can check if a set contains a particular element using:
    #
    #     >>> 2 in s
    #     True
    #     >>> 6 in s
    #     False
    #
    # You can convert a set to a list using:
    #
    #     >>> list(s)
    #     [1, 2, 3, 4, 5]
    #
    # You can iterate over the distinct elements of a set using:
    #
    #     >>> for x in s:
    #     ...     print(x)
    #     ...
    #     1
    #     2
    #     3
    #     4
    #     5
    #
    # You can check if a set contains a particular element using:
    #
    #     >>> 2 in s
    #     True
    #     >>> 6 in s
    #     False
    #
    # You can convert a set to a list using:
    #
    #     >>> list(s)
    #     [1, 2, 3, 4, 5]
    #
    # You can iterate over the distinct elements of a set using:


def check(candidate):
    assert candidate([1, 3, 5, 0]) == False
    assert candidate([1, 3, 5, -1]) == False
    assert candidate([1, 3, -2, 1]) == True
    assert candidate([1, 2, 3, 7]) == False
    assert candidate([1, 2, 5, 7]) == False
    assert candidate([2, 4, -5, 3, 9, 7]) == True
    assert candidate([1]) == False
    assert candidate([1, 3, 5, -100]) == False
    assert candidate([100, 3, 5, -100]) == False

def test_check():
    check(triples_sum_to_zero)

test_check()
