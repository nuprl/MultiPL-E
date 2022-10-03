from typing import List, Dict, Tuple

def count_occurance(s: str) -> int:
    """
	Write a function to count the number of occurence of the string 'std' in a given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('letstdlenstdporstd') == 3
    assert candidate('truststdsolensporsd') == 1
    assert candidate('makestdsostdworthit') == 2
    assert candidate('stds') == 1
    assert candidate('') == 0

def test_check():
    check(count_occurance)

