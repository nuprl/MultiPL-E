from typing import List, Dict, Tuple

def power_base_sum(base: int, power: int) -> int:
    """
	Write a function that takes base and power as arguments and calculate the sum of all digits of the base to the specified power.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(2, 100) == 115
    assert candidate(8, 10) == 37
    assert candidate(8, 15) == 62
    assert candidate(3, 3) == 9

def test_check():
    check(power_base_sum)

