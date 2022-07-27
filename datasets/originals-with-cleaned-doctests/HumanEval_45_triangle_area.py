

def triangle_area(a: int, h: int) -> float:
    """Given length of a side and high return area for a triangle.
    >>> triangle_area(5, 3)
    7.5
    """
    ### Canonical solution below ###
    return a * h / 2.0

### Unit tests below ###


METADATA = {}


def check(candidate):
    assert candidate(5, 3) == 7.5
    assert candidate(2, 2) == 2.0
    assert candidate(10, 8) == 40.0

def test_check():
    check(triangle_area)
