from typing import List, Dict, Tuple

def count_reverse_pairs(test_list: List[str]) -> int:
    """
	Write a function to count the pairs of reverse strings in the given string list. https://www.geeksforgeeks.org/python-program-to-count-the-pairs-of-reverse-strings/
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['julia', 'best', 'tseb', 'for', 'ailuj']) == 2
    assert candidate(['geeks', 'best', 'for', 'skeeg']) == 1
    assert candidate(['makes', 'best', 'sekam', 'for', 'rof']) == 2

def test_check():
    check(count_reverse_pairs)

