from typing import List, Dict, Tuple

def find_solution(a: int, b: int, n: int) -> Optional[Tuple[int, int]]:
    """
	Write a function that returns integers x and y that satisfy ax + by = n as a tuple, or return None if no solution exists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2, 3, 7) == (2, 1)
    assert candidate(4, 2, 7) == None
    assert candidate(1, 13, 17) == (4, 1)

def test_check():
    check(find_solution)

