def special_factorial(n: int) -> int:
    """The Brazilian factorial is defined as:
    brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    where n > 0

    For example:
    >>> special_factorial(4)
    288

    The function will receive an integer as input and should return the special
    factorial of this integer.
    """
    if n == 0:
        return 1
    else:
        return n * special_factorial(n - 1)



def check(candidate):
    assert candidate(4) == 288
    assert candidate(5) == 34560
    assert candidate(7) == 125411328000
    assert candidate(1) == 1

def test_check():
    check(special_factorial)

test_check()
