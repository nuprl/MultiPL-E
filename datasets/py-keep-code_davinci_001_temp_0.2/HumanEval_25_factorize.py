from typing import List

def factorize(n: int) -> List[int]:
    """ Return list of prime factors of given integer in the order from smallest to largest.
    Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    Input number should be equal to the product of all factors
    >>> factorize(8)
    [2, 2, 2]
    >>> factorize(25)
    [5, 5]
    >>> factorize(70)
    [2, 5, 7]
    """
    factors = []
    i = 2
    while i <= n:
        if n % i == 0:
            factors.append(i)
            n = n // i
        else:
            i += 1
    return factors


def check(candidate):
    assert candidate(2) == [2]
    assert candidate(4) == [2, 2]
    assert candidate(8) == [2, 2, 2]
    assert candidate(57) == [3, 19]
    assert candidate(3249) == [3, 3, 19, 19]
    assert candidate(185193) == [3, 3, 3, 19, 19, 19]
    assert candidate(20577) == [3, 19, 19, 19]
    assert candidate(18) == [2, 3, 3]

def test_check():
    check(factorize)

test_check()
