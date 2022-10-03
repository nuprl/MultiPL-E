from typing import List, Dict, Tuple

def reverse_string_list(stringlist: List[str]) -> List[str]:
    """
	Write a function to reverse each string in a given list of string values.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(['Red', 'Green', 'Blue', 'White', 'Black']) == ['deR', 'neerG', 'eulB', 'etihW', 'kcalB']
    assert candidate(['john', 'amal', 'joel', 'george']) == ['nhoj', 'lama', 'leoj', 'egroeg']
    assert candidate(['jack', 'john', 'mary']) == ['kcaj', 'nhoj', 'yram']

def test_check():
    check(reverse_string_list)

