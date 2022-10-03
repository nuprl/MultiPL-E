from typing import List, Dict, Tuple

def remove_all_spaces(text: str) -> str:
    """
	Write a function to remove all whitespaces from a string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('python  program') == 'pythonprogram'
    assert candidate('python   programming    language') == 'pythonprogramminglanguage'
    assert candidate('python                     program') == 'pythonprogram'
    assert candidate('   python                     program') == 'pythonprogram'

def test_check():
    check(remove_all_spaces)

