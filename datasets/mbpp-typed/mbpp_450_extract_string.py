from typing import List, Dict, Tuple

def extract_string(str: List[str], l: int) -> List[str]:
    """
	Write a function to extract specified size of strings from a given list of string values.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['Python', 'list', 'exercises', 'practice', 'solution'], 8) == ['practice', 'solution']
    assert candidate(['Python', 'list', 'exercises', 'practice', 'solution'], 6) == ['Python']
    assert candidate(['Python', 'list', 'exercises', 'practice', 'solution'], 9) == ['exercises']

def test_check():
    check(extract_string)

