from typing import List, Dict, Tuple

def is_samepatterns(colors: List[str], patterns: List[str]) -> bool:
    """
	Write a function to check whether it follows the sequence given in the patterns array.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['red', 'green', 'green'], ['a', 'b', 'b']) == True
    assert candidate(['red', 'green', 'greenn'], ['a', 'b', 'b']) == False
    assert candidate(['red', 'green', 'greenn'], ['a', 'b']) == False

def test_check():
    check(is_samepatterns)

