from typing import List, Dict, Tuple

def extract_values(text: str) -> List[str]:
    """
	Write a function to extract values between quotation marks from a string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('"Python", "PHP", "Java"') == ['Python', 'PHP', 'Java']
    assert candidate('"python","program","language"') == ['python', 'program', 'language']
    assert candidate('"red","blue","green","yellow"') == ['red', 'blue', 'green', 'yellow']

def test_check():
    check(extract_values)

