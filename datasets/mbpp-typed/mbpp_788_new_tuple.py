from typing import List, Dict, Tuple

def new_tuple(test_list: List[str], test_str: str) -> Tuple[str, str, str]:
    """
	Write a function to create a new tuple from the given string and list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['WEB', 'is'], 'best') == ('WEB', 'is', 'best')
    assert candidate(['We', 'are'], 'Developers') == ('We', 'are', 'Developers')
    assert candidate(['Part', 'is'], 'Wrong') == ('Part', 'is', 'Wrong')

def test_check():
    check(new_tuple)

