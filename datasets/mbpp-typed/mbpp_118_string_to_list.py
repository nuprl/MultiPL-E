from typing import List, Dict, Tuple

def string_to_list(string: str) -> List[str]:
    """
	Write a function to convert a string to a list of strings split on the space character.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('python programming') == ['python', 'programming']
    assert candidate('lists tuples strings') == ['lists', 'tuples', 'strings']
    assert candidate('write a program') == ['write', 'a', 'program']

def test_check():
    check(string_to_list)

