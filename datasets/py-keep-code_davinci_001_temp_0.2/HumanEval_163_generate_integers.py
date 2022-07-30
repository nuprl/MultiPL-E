from typing import List

def generate_integers(a: int, b: int) -> List[int]:
    """
    Given two positive integers a and b, return the even digits between a
    and b, in ascending order.

    For example:
    generate_integers(2, 8) => [2, 4, 6, 8]
    generate_integers(8, 2) => [2, 4, 6, 8]
    generate_integers(10, 14) => []
    """
    return [i for i in range(a, b+1) if i % 2 == 0]

print(generate_integers(2, 8))
print(generate_integers(8, 2))
print(generate_integers(10, 14))

def check(candidate):
    assert candidate(2, 10) == [2, 4, 6, 8]
    assert candidate(10, 2) == [2, 4, 6, 8]
    assert candidate(132, 2) == [2, 4, 6, 8]
    assert candidate(17, 89) == []

def test_check():
    check(generate_integers)

test_check()
