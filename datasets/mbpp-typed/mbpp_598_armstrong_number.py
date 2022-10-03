from typing import List, Dict, Tuple

def armstrong_number(number: int) -> bool:
    """
	Write a function to check whether the given number is armstrong or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(153) == True
    assert candidate(259) == False
    assert candidate(4458) == False

def test_check():
    check(armstrong_number)

