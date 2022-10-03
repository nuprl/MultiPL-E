from typing import List, Dict, Tuple

def find_substring(str1: List[str], sub_str: str) -> bool:
    """
	Write a function to check if a string is present as a substring in a given list of string values.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['red', 'black', 'white', 'green', 'orange'], 'ack') == True
    assert candidate(['red', 'black', 'white', 'green', 'orange'], 'abc') == False
    assert candidate(['red', 'black', 'white', 'green', 'orange'], 'ange') == True

def test_check():
    check(find_substring)

