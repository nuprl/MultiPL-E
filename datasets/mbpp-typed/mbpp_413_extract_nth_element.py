from typing import List, Dict, Tuple

def extract_nth_element(list1: List[Tuple[str, int, int]], n: int) -> List[Any]:
    """
	Write a function to extract the nth element from a given list of tuples.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([('Greyson Fulton', 98, 99), ('Brady Kent', 97, 96), ('Wyatt Knott', 91, 94), ('Beau Turnbull', 94, 98)], 0) == ['Greyson Fulton', 'Brady Kent', 'Wyatt Knott', 'Beau Turnbull']
    assert candidate([('Greyson Fulton', 98, 99), ('Brady Kent', 97, 96), ('Wyatt Knott', 91, 94), ('Beau Turnbull', 94, 98)], 2) == [99, 96, 94, 98]
    assert candidate([('Greyson Fulton', 98, 99), ('Brady Kent', 97, 96), ('Wyatt Knott', 91, 94), ('Beau Turnbull', 94, 98)], 1) == [98, 97, 91, 94]

def test_check():
    check(extract_nth_element)

