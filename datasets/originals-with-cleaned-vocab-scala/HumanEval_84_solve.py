
def solve(N: int) -> str:
    """Given a positive integer N, return the total sum of its digits in binary.
    
    Example
    >>> solve(1000)
    "1"
    >>> solve(150)
    "110"
    >>> solve(147)
    "1100"
    
    Variables:
        @N integer
             Constraints: 0 ≤ N ≤ 10000.
    Output:
         a string of binary number
    """
    ### Canonical solution below ###
    return bin(sum(int(i) for i in str(N)))[2:]

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    
    assert candidate(1000) == "1", "Error"
    assert candidate(150) == "110", "Error"
    assert candidate(147) == "1100", "Error"

    # Check some edge cases that are easy to work out by hand.
    
    assert candidate(333) == "1001", "Error"
    assert candidate(963) == "10010", "Error"

def test_check():
    check(solve)
