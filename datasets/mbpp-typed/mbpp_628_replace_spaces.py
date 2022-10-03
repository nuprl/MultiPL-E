from typing import List, Dict, Tuple

def replace_spaces(string: str) -> str:
    """
	Write a function to replace all spaces in the given string with '%20'.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('My Name is Dawood') == 'My%20Name%20is%20Dawood'
    assert candidate('I am a Programmer') == 'I%20am%20a%20Programmer'
    assert candidate('I love Coding') == 'I%20love%20Coding'

def test_check():
    check(replace_spaces)

