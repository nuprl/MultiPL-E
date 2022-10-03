from typing import List, Dict, Tuple

def remove_parenthesis(items: List[str]) -> str:
    """
	Write a function to remove the parenthesis and what is inbetween them from a string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['python (chrome)']) == 'python'
    assert candidate(['string(.abc)']) == 'string'
    assert candidate(['alpha(num)']) == 'alpha'

def test_check():
    check(remove_parenthesis)

