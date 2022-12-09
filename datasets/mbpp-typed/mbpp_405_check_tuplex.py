from typing import List, Dict, Tuple

def check_tuplex(tuplex: List[Union[str, int]], tuple1: Any) -> bool:
    """
	Write a function to check whether an element exists within a tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'], 'r') == True
    assert candidate(['w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'], '5') == False
    assert candidate(['w', 3, 'r', 'e', 's', 'o', 'u', 'r', 'c', 'e'], 3) == True

def test_check():
    check(check_tuplex)

