def digits(n: int) -> int:
    """Given a positive integer n, return the product of the odd digits.
    Return 0 if all digits are even.
    For example:
    digits(1)  == 1
    digits(4)  == 0
    digits(235) == 15
    """
    result = 1
    for i in str(n):
        if int(i) % 2 == 1:
            result *= int(i)
    return result



def check(candidate):
    assert candidate(5) == 5
    assert candidate(54) == 5
    assert candidate(120) == 1
    assert candidate(5014) == 5
    assert candidate(98765) == 315
    assert candidate(5576543) == 2625
    assert candidate(2468) == 0

def test_check():
    check(digits)

test_check()
