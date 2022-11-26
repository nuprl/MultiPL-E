from typing import List, Dict, Tuple

def start_withp(words: List[str]) -> Tuple[str, str]:
    """
	Write a function to return two words from a list of words starting with letter 'p'.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['Python PHP', 'Java JavaScript', 'c c++']) == ('Python', 'PHP')
    assert candidate(['Python Programming', 'Java Programming']) == ('Python', 'Programming')
    assert candidate(['Pqrst Pqr', 'qrstuv']) == ('Pqrst', 'Pqr')

def test_check():
    check(start_withp)

