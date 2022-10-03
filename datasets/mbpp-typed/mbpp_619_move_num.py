from typing import List, Dict, Tuple

def move_num(test_str: str) -> str:
    """
	Write a function to move all the numbers to the end of the given string.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate('I1love143you55three3000thousand') == 'Iloveyouthreethousand1143553000'
    assert candidate('Avengers124Assemble') == 'AvengersAssemble124'
    assert candidate('Its11our12path13to14see15things16do17things') == 'Itsourpathtoseethingsdothings11121314151617'

def test_check():
    check(move_num)

