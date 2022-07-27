from typing import List

def add(lst: List[int]) -> int:
    """Given a non-empty list of integers lst. add the even elements that are at odd indices..


    Examples:
        add([4, 2, 6, 7]) ==> 2 
    """
    ### Canonical solution below ###
    return sum([lst[i] for i in range(1, len(lst), 2) if lst[i]%2 == 0])

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate([4, 88]) == 88
    assert candidate([4, 5, 6, 7, 2, 122]) == 122
    assert candidate([4, 0, 6, 7]) == 0
    assert candidate([4, 4, 6, 8]) == 12

    # Check some edge cases that are easy to work out by hand.
    
def test_check():
    check(add)
