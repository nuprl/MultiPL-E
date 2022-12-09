from typing import List, Dict, Tuple

def sort_sublists(input_list: List[List[str]]) -> List[List[str]]:
    """
	Write a function to sort each sublist of strings in a given list of lists.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([['green', 'orange'], ['black', 'white'], ['white', 'black', 'orange']]) == [['green', 'orange'], ['black', 'white'], ['black', 'orange', 'white']]
    assert candidate([[' red ', 'green'], ['blue ', ' black'], [' orange', 'brown']]) == [[' red ', 'green'], [' black', 'blue '], [' orange', 'brown']]
    assert candidate([['zilver', 'gold'], ['magnesium', 'aluminium'], ['steel', 'bronze']]) == [['gold', 'zilver'], ['aluminium', 'magnesium'], ['bronze', 'steel']]

def test_check():
    check(sort_sublists)

