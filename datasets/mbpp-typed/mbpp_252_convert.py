from typing import List, Dict, Tuple

def convert(numbers: int) -> Tuple[float, float]:
    """
	Write a python function to convert complex numbers to polar coordinates.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1) == (1.0, 0.0)
    assert candidate(4) == (4.0, 0.0)
    assert candidate(5) == (5.0, 0.0)

def test_check():
    check(convert)

