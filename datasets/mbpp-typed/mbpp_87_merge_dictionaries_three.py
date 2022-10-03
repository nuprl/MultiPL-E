from typing import List, Dict, Tuple

def merge_dictionaries_three(dict1: Dict[str, str], dict2: Dict[str, str], dict3: Dict[str, str]) -> Dict[str, str]:
    """
	Write a function to merge three dictionaries into a single dictionary.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate({'R': 'Red', 'B': 'Black', 'P': 'Pink'}, {'G': 'Green', 'W': 'White'}, {'O': 'Orange', 'W': 'White', 'B': 'Black'}) == {'B': 'Black', 'R': 'Red', 'P': 'Pink', 'G': 'Green', 'W': 'White', 'O': 'Orange'}
    assert candidate({'R': 'Red', 'B': 'Black', 'P': 'Pink'}, {'G': 'Green', 'W': 'White'}, {'L': 'lavender', 'B': 'Blue'}) == {'W': 'White', 'P': 'Pink', 'B': 'Black', 'R': 'Red', 'G': 'Green', 'L': 'lavender'}
    assert candidate({'R': 'Red', 'B': 'Black', 'P': 'Pink'}, {'L': 'lavender', 'B': 'Blue'}, {'G': 'Green', 'W': 'White'}) == {'B': 'Black', 'P': 'Pink', 'R': 'Red', 'G': 'Green', 'L': 'lavender', 'W': 'White'}

def test_check():
    check(merge_dictionaries_three)

