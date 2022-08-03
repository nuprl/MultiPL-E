
def any_int(x: float, y: float, z: float) -> bool:
    '''
    Create a function that takes 3 numbers.
    Returns true if one of the numbers is equal to the sum of the other two, and all numbers are integers.
    Returns false in any other cases.
    
    Examples
    >>> any_int(5, 2, 7)
    True
    
    >>> any_int(3, 2, 2)
    False

    >>> any_int(3, -2, 1)
    True
    
    >>> any_int(3.6, -2.2, 2)
    False
  

    
    '''
    ### Canonical solution below ###
    
    if isinstance(x,int) and isinstance(y,int) and isinstance(z,int):
        if (x+y==z) or (x+z==y) or (y+z==x):
            return True
        return False
    return False

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    assert candidate(2, 3, 1)==True, "This prints if this assert fails 1 (good for debugging!)"
    assert candidate(2.5, 2, 3)==False, "This prints if this assert fails 2 (good for debugging!)"
    assert candidate(1.5, 5, 3.5)==False, "This prints if this assert fails 3 (good for debugging!)"
    assert candidate(2, 6, 2)==False, "This prints if this assert fails 4 (good for debugging!)"
    assert candidate(4, 2, 2)==True, "This prints if this assert fails 5 (good for debugging!)"
    assert candidate(2.2, 2.2, 2.2)==False, "This prints if this assert fails 6 (good for debugging!)"
    assert candidate(-4, 6, 2)==True, "This prints if this assert fails 7 (good for debugging!)"

    # Check some edge cases that are easy to work out by hand.
    assert candidate(2,1,1)==True, "This prints if this assert fails 8 (also good for debugging!)"
    assert candidate(3,4,7)==True, "This prints if this assert fails 9 (also good for debugging!)"
    assert candidate(3.0,4,7)==False, "This prints if this assert fails 10 (also good for debugging!)"

def test_check():
    check(any_int)
