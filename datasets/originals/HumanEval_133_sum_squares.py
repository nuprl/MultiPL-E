from typing import List

def sum_squares(lst: List[float]) -> int:
    """You are given a list of numbers.
    You need to return the sum of squared numbers in the given list,
    round each element in the list to the upper int(Ceiling) first.
    Examples:
    For lst = [1,2,3] the output should be 14
    For lst = [1,4,9] the output should be 98
    For lst = [1,3,5,7] the output should be 84
    For lst = [1.4,4.2,0] the output should be 29
    For lst = [-2.4,1,1] the output should be 6
    

    """
    ### Canonical solution below ###
    import math
    squared = 0
    for i in lst:
        squared += math.ceil(i)**2
    return squared

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate([1.0,2.0,3.0])==14, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([1.0,2.0,3.0])==14, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([1.0,3.0,5.0,7.0])==84, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([1.4,4.2,0.0])==29, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([-2.4,1.0,1.0])==6, "This prints if this assert fails 1 (good for debugging!)"

    assert candidate([100.0,1.0,15.0,2.0])==10230, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([10000.0,10000.0])==200000000, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([-1.4,4.6,6.3])==75, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([-1.4,17.9,18.9,19.9])==1086, "This prints if this assert fails 1 (good for debugging!)"


    # Check some edge cases that are easy to work out by hand.
    assert candidate([0.0])==0, "This prints if this assert fails 2 (also good for debugging!)"
    assert candidate([-1.0])==1, "This prints if this assert fails 2 (also good for debugging!)"
    assert candidate([-1.0,1.0,0.0])==2, "This prints if this assert fails 2 (also good for debugging!)"

def test_check():
    check(sum_squares)
