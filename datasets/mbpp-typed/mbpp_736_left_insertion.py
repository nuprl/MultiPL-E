from typing import List, Dict, Tuple

def left_insertion(a: List[int], x: int) -> int:
    """
	Write a function to locate the left insertion point for a specified value in sorted order. https://www.w3resource.com/python-exercises/data-structures-and-algorithms/python-data-structure-exercise-24.php
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 4, 5], 6) == 4
    assert candidate([1, 2, 4, 5], 3) == 2
    assert candidate([1, 2, 4, 5], 7) == 4

def test_check():
    check(left_insertion)

