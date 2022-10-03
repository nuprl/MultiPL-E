from typing import List, Dict, Tuple

def dog_age(h_age: int) -> int:
    """
	Write a function to calculate a dog's age in dog's years.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(12) == 61
    assert candidate(15) == 73
    assert candidate(24) == 109

def test_check():
    check(dog_age)

