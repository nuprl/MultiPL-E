from typing import List, Dict, Tuple

def find_literals(text: str, pattern: str) -> Tuple[str, int, int]:
    """
	Write a function to search a string for a regex pattern. The function should return the matching subtring, a start index and an end index.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('The quick brown fox jumps over the lazy dog.', 'fox') == ('fox', 16, 19)
    assert candidate('Its been a very crazy procedure right', 'crazy') == ('crazy', 16, 21)
    assert candidate('Hardest choices required strongest will', 'will') == ('will', 35, 39)

def test_check():
    check(find_literals)

