from typing import List, Dict, Tuple

def check_element(list: List[Any], element: Any) -> bool:
    """
	Write a function that takes in a list and element and checks whether all items in the list are equal to the given element.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['green', 'orange', 'black', 'white'], 'blue') == False
    assert candidate([1, 2, 3, 4], 7) == False
    assert candidate(['green', 'green', 'green', 'green'], 'green') == True

def test_check():
    check(check_element)

