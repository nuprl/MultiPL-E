from typing import List


def superPow(a: int, b: List[int]) -> int:
    """
    Your task is to calculate ab mod 1337 where a is a positive integer and b is an extremely large positive integer given in the form of an array.
 
    Example 1:

    Input: a = 2, b = [3]
    Output: 8

    Example 2:

    Input: a = 2, b = [1,0]
    Output: 1024

    Example 3:

    Input: a = 1, b = [4,3,3,8,5,2]
    Output: 1

 
    Constraints:

    1 <= a <= 231 - 1
    1 <= b.length <= 2000
    0 <= b[i] <= 9
    b does not contain leading zeros.

    """
    ### Canonical solution below ###
    def powmod(a, b):
        if b == 0:
            return 1
        res = powmod(a, b // 2)
        return res * res % 1337 * a % 1337 if b % 2 else res * res % 1337
    n = 0
    for bi in b:
        n = (n * 10 + bi) % 1140
    return powmod(a % 1337, n + 1140)




### Unit tests below ###
def check(candidate):
	assert candidate(2, [1,0]) == 1024
	assert candidate(1, [4,3,3,8,5,2]) == 1
	assert candidate(2, [3]) == 8
	assert candidate(3, [2]) == 9
	assert candidate(0, [1]) == 0
def test_check():
	check(superPow)
# Metadata Difficulty: Medium
# Metadata Topics: math,divide-and-conquer
# Metadata Coverage: 100
