from typing import List, Dict, Tuple

def loss_amount(actual_cost: int, sale_amount: int) -> int:
    """
	Write a function that gives loss amount on a sale if the given amount has loss else return 0.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate(1500, 1200) == 0
    assert candidate(100, 200) == 100
    assert candidate(2000, 5000) == 3000

def test_check():
    check(loss_amount)

