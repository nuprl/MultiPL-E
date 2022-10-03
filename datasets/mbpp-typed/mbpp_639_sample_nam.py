from typing import List, Dict, Tuple

def sample_nam(sample_names: List[str]) -> int:
    """
	Write a function to sum the length of the names of a given list of names after removing the names that start with a lowercase letter.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['sally', 'Dylan', 'rebecca', 'Diana', 'Joanne', 'keith']) == 16
    assert candidate(['php', 'res', 'Python', 'abcd', 'Java', 'aaa']) == 10
    assert candidate(['abcd', 'Python', 'abba', 'aba']) == 6

def test_check():
    check(sample_nam)

