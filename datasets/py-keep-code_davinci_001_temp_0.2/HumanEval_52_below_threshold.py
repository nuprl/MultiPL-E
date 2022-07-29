from typing import List

def below_threshold(l: List[int], t: int) -> bool:
    """Return True if all numbers in the list l are below threshold t.
    >>> below_threshold([1, 2, 4, 10], 100)
    True
    >>> below_threshold([1, 20, 4, 10], 5)
    False
    """
    for i in l:
        if i > t:
            return False
    return True


def check(candidate):
    assert candidate([1, 2, 4, 10], 100) == True
    assert candidate([1, 20, 4, 10], 5) == False
    assert candidate([1, 20, 4, 10], 21) == True
    assert candidate([1, 20, 4, 10], 22) == True
    assert candidate([1, 8, 4, 10], 11) == True
    assert candidate([1, 8, 4, 10], 10) == False

def test_check():
    check(below_threshold)

test_check()
