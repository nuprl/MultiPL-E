from typing import List

def double_the_difference(lst: List[int]) -> int:
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
    assert candidate([5, 4]) == 25 , "This prints if this assert fails 2 (good for debugging!)"
    assert candidate([0.1, 0.2, 0.3]) == 0 , "This prints if this assert fails 3 (good for debugging!)"
    assert candidate([-10, -20, -30]) == 0 , "This prints if this assert fails 4 (good for debugging!)"


    # Check some edge cases that are easy to work out by hand.
    assert candidate([-1, -2, 8]) == 0, "This prints if this assert fails 5 (also good for debugging!)"
    assert candidate([0.2, 3, 5]) == 34, "This prints if this assert fails 6 (also good for debugging!)"
    lst = list(range(-99, 100, 2))
    odd_sum = sum([i**2 for i in lst if i%2!=0 and i > 0])
    assert candidate(lst) == odd_sum , "This prints if this assert fails 7 (good for debugging!)"

def test_check():
    check(double_the_difference)
