from typing import List, Dict, Tuple

def heap_queue_largest(nums: List[int], n: int) -> List[int]:
    """
	Write a function to find the n largest integers from a given list of numbers, returned in descending order.
	"""
    ### Canonical solution below ###
    pass

### Unit tests below ###
def check(candidate):
    assert candidate([25, 35, 22, 85, 14, 65, 75, 22, 58], 3) == [85, 75, 65]
    assert candidate([25, 35, 22, 85, 14, 65, 75, 22, 58], 2) == [85, 75]
    assert candidate([25, 35, 22, 85, 14, 65, 75, 22, 58], 5) == [85, 75, 65, 58, 35]

def test_check():
    check(heap_queue_largest)

