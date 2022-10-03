from typing import List, Dict, Tuple

def toggle_middle_bits(n: int) -> int:
    """
	Write a python function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(9) == 15
    assert candidate(10) == 12
    assert candidate(11) == 13
    assert candidate(65) == 127
    assert candidate(77) == 115

def test_check():
    check(toggle_middle_bits)

