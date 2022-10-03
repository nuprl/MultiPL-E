from typing import List, Dict, Tuple

def remove_length(test_str: str, K: int) -> str:
    """
	Write a function to remove all the words with k length in the given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('The person is most value tet', 3) == 'person is most value'
    assert candidate('If you told me about this ok', 4) == 'If you me about ok'
    assert candidate('Forces of darkeness is come into the play', 4) == 'Forces of darkeness is the'

def test_check():
    check(remove_length)

