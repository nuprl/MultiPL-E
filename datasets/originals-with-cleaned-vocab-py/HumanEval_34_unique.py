from typing import List

def unique(l: List[int]) -> List[int]:
    """Return sorted unique elements in a list
    >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [0, 2, 3, 5, 9, 123]
    """
    ### Canonical solution below ###
    return sorted(list(set(l)))

### Unit tests below ###


METADATA = {}


def check(candidate):
    assert candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123]

def test_check():
    check(unique)
