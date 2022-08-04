from typing import List

def tri(n: int) -> List[int]:
    """Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
    the last couple centuries. However, what people don't know is Tribonacci sequence.
    Tribonacci sequence is defined by the recurrence:
    tri(1) = 3
    tri(n) = 1 + n / 2, if n is even.
    tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
    For example:
    tri(2) = 1 + (2 / 2) = 2
    tri(4) = 3
    tri(3) = tri(2) + tri(1) + tri(4)
           = 2 + 3 + 3 = 8 
    You are given a non-negative integer number n, you have to a return a list of the 
    first n + 1 numbers of the Tribonacci sequence.
    Examples:
    >>> tri(3)
    [1, 3, 2, 8]
    """
    ### Canonical solution below ###
    if n == 0:
        return [1]
    my_tri = [1, 3]
    for i in range(2, n + 1):
        if i % 2 == 0:
            my_tri.append(i / 2 + 1)
        else:
            my_tri.append(my_tri[i - 1] + my_tri[i - 2] + (i + 3) / 2)
    return my_tri

### Unit tests below ###
def check(candidate):

    # Check some simple cases
    
    assert candidate(3) == [1, 3, 2, 8]
    assert candidate(4) == [1, 3, 2, 8, 3]
    assert candidate(5) == [1, 3, 2, 8, 3, 15]
    assert candidate(6) == [1, 3, 2, 8, 3, 15, 4]
    assert candidate(7) == [1, 3, 2, 8, 3, 15, 4, 24]
    assert candidate(8) == [1, 3, 2, 8, 3, 15, 4, 24, 5]
    assert candidate(9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35]
    assert candidate(20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11]

    # Check some edge cases that are easy to work out by hand.
    assert candidate(0) == [1]
    assert candidate(1) == [1, 3]
def test_check():
    check(tri)
