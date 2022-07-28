from typing import List

def double_the_difference(lst: List[float]) -> int:
    '''
    Given a list of numbers, return the sum of squares of the numbers
    in the list that are odd. Ignore numbers that are negative or not integers.
    
    double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    double_the_difference([-1, -2, 0]) == 0
    double_the_difference([9, -2]) == 81
    double_the_difference([0]) == 0  
   
    If the input list is empty, return 0.
    '''
    ### Canonical solution below ###
    return sum([i**2 for i in lst if i > 0 and i%2!=0 and "." not in str(i)])

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate([]) == 0 , "This prints if this assert fails 1 (good for debugging!)"
    assert candidate([5.0, 4.0]) == 25 , "This prints if this assert fails 2 (good for debugging!)"
    assert candidate([0.1, 0.2, 0.3]) == 0 , "This prints if this assert fails 3 (good for debugging!)"
    assert candidate([-10.0, -20.0, -30.0]) == 0 , "This prints if this assert fails 4 (good for debugging!)"


    # Check some edge cases that are easy to work out by hand.
    assert candidate([-1.0, -2.0, 8.0]) == 0, "This prints if this assert fails 5 (also good for debugging!)"
    assert candidate([0.2, 3.0, 5.0]) == 34, "This prints if this assert fails 6 (also good for debugging!)"
    assert candidate([-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165, "This prints if this assert fails 7 (good for debugging!)"

def test_check():
    check(double_the_difference)
