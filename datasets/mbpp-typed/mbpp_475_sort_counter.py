from typing import List, Dict, Tuple

def sort_counter(dict1: Dict[str, int]) -> List[Tuple[str, int]]:
    """
	Write a function to sort a dictionary by value.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate({'Math': 81, 'Physics': 83, 'Chemistry': 87}) == [('Chemistry', 87), ('Physics', 83), ('Math', 81)]
    assert candidate({'Math': 400, 'Physics': 300, 'Chemistry': 250}) == [('Math', 400), ('Physics', 300), ('Chemistry', 250)]
    assert candidate({'Math': 900, 'Physics': 1000, 'Chemistry': 1250}) == [('Chemistry', 1250), ('Physics', 1000), ('Math', 900)]

def test_check():
    check(sort_counter)

