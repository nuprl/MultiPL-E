from typing import List, Dict, Tuple

def find_Average_Of_Cube(n: int) -> float:
    """
	Write a python function to find the average of cubes of first n natural numbers.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2) == 4.5
    assert candidate(3) == 12
    assert candidate(1) == 1

def test_check():
    check(find_Average_Of_Cube)

