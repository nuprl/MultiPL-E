from typing import List, Dict, Tuple

def expensive_items(items: List[Dict[str, Union[str, float]]], n: int) -> List[Dict[str, Union[str, float]]]:
    """
	Write a function to find the n most expensive items in a given dataset.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([{'name': 'Item-1', 'price': 101.1}, {'name': 'Item-2', 'price': 555.22}], 1) == [{'name': 'Item-2', 'price': 555.22}]
    assert candidate([{'name': 'Item-1', 'price': 101.1}, {'name': 'Item-2', 'price': 555.22}, {'name': 'Item-3', 'price': 45.09}], 2) == [{'name': 'Item-2', 'price': 555.22}, {'name': 'Item-1', 'price': 101.1}]
    assert candidate([{'name': 'Item-1', 'price': 101.1}, {'name': 'Item-2', 'price': 555.22}, {'name': 'Item-3', 'price': 45.09}, {'name': 'Item-4', 'price': 22.75}], 1) == [{'name': 'Item-2', 'price': 555.22}]

def test_check():
    check(expensive_items)

