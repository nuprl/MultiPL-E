from typing import List, Dict, Tuple

def empty_list(length: int) -> List[Dict[None, None]]:
    """
	Write a function to create a list of N empty dictionaries.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(5) == [{}, {}, {}, {}, {}]
    assert candidate(6) == [{}, {}, {}, {}, {}, {}]
    assert candidate(7) == [{}, {}, {}, {}, {}, {}, {}]

def test_check():
    check(empty_list)

