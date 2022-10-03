from typing import List, Dict, Tuple

def long_words(n: int, str: str) -> List[str]:
    """
	Write a function to find words that are longer than n characters from a given list of words.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(3, 'python is a programming language') == ['python', 'programming', 'language']
    assert candidate(2, 'writing a program') == ['writing', 'program']
    assert candidate(5, 'sorting list') == ['sorting']

def test_check():
    check(long_words)

