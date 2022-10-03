from typing import List, Dict, Tuple

def check_type(test_tuple: Any) -> bool:
    """
	Write a function to check if all the elements in tuple have same data type or not.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((5, 6, 7, 3, 5, 6)) == True
    assert candidate((1, 2, '4')) == False
    assert candidate((3, 2, 1, 4, 5)) == True

def test_check():
    check(check_type)

