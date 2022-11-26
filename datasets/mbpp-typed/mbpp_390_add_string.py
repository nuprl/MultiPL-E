from typing import List, Dict, Tuple

def add_string(list_: List[Any], string: str) -> List[str]:
    """
	Write a function to apply a given format string to all of the elements in a list.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([1, 2, 3, 4], 'temp{0}') == ['temp1', 'temp2', 'temp3', 'temp4']
    assert candidate(['a', 'b', 'c', 'd'], 'python{0}') == ['pythona', 'pythonb', 'pythonc', 'pythond']
    assert candidate([5, 6, 7, 8], 'string{0}') == ['string5', 'string6', 'string7', 'string8']

def test_check():
    check(add_string)

