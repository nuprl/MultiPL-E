
def is_equal_to_sum_even(n: int) -> bool:
    """Evaluate whether the given number n can be written as the sum of exactly 4 positive even numbers
    Example
    >>> is_equal_to_sum_even(4) 
    False
    >>> is_equal_to_sum_even(6) 
    False
    >>> is_equal_to_sum_even(8) 
    True
    """
    ### Canonical solution below ###
    return n%2 == 0 and n >= 8

### Unit tests below ###
def check(candidate):
    assert candidate(4) == False
    assert candidate(6) == False
    assert candidate(8) == True
    assert candidate(10) == True
    assert candidate(11) == False
    assert candidate(12) == True
    assert candidate(13) == False
    assert candidate(16) == True
def test_check():
    check(is_equal_to_sum_even)
