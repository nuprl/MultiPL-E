
def solve(N: int) -> str:
    """Given a positive integer N, return the total sum of its digits in binary.
    
    Example
        For N = 1000, the sum of digits will be 1 the output should be "1".
        For N = 150, the sum of digits will be 6 the output should be "110".
        For N = 147, the sum of digits will be 12 the output should be "1100".
    
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
