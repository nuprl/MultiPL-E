from typing import List, Dict, Tuple

def max_aggregate(stdata: List[Tuple[str, int]]) -> Tuple[str, int]:
    """
	Write a function to calculate the maximum aggregate from the list of tuples.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([('Juan Whelan', 90), ('Sabah Colley', 88), ('Peter Nichols', 7), ('Juan Whelan', 122), ('Sabah Colley', 84)]) == ('Juan Whelan', 212)
    assert candidate([('Juan Whelan', 50), ('Sabah Colley', 48), ('Peter Nichols', 37), ('Juan Whelan', 22), ('Sabah Colley', 14)]) == ('Juan Whelan', 72)
    assert candidate([('Juan Whelan', 10), ('Sabah Colley', 20), ('Peter Nichols', 30), ('Juan Whelan', 40), ('Sabah Colley', 50)]) == ('Sabah Colley', 70)

def test_check():
    check(max_aggregate)

