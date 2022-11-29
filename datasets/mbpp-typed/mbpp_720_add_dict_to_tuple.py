from typing import List, Dict, Tuple

def add_dict_to_tuple(test_tup: Tuple[int, int, int], test_dict: Dict[str, int]) -> Tuple[int, int, int, Dict[str, int]]:
    """
	Write a function to add a dictionary to the tuple. The output should be a tuple.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate((4, 5, 6), {'MSAM': 1, 'is': 2, 'best': 3}) == (4, 5, 6, {'MSAM': 1, 'is': 2, 'best': 3})
    assert candidate((1, 2, 3), {'UTS': 2, 'is': 3, 'Worst': 4}) == (1, 2, 3, {'UTS': 2, 'is': 3, 'Worst': 4})
    assert candidate((8, 9, 10), {'POS': 3, 'is': 4, 'Okay': 5}) == (8, 9, 10, {'POS': 3, 'is': 4, 'Okay': 5})

def test_check():
    check(add_dict_to_tuple)

