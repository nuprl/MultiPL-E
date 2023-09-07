def superpalindromesInRange(left: str, right: str) -> int:
    """
    Let's say a positive integer is a super-palindrome if it is a palindrome, and it is also the square of a palindrome.
    Given two positive integers left and right represented as strings, return the number of super-palindromes integers in the inclusive range [left, right].
 
    Example 1:

    Input: left = "4", right = "1000"
    Output: 4
    Explanation: 4, 9, 121, and 484 are superpalindromes.
    Note that 676 is not a superpalindrome: 26 * 26 = 676, but 26 is not a palindrome.

    Example 2:

    Input: left = "1", right = "2"
    Output: 1

 
    Constraints:

    1 <= left.length, right.length <= 18
    left and right consist of only digits.
    left and right cannot have leading zeros.
    left and right represent integers in the range [1, 1018 - 1].
    left is less than or equal to right.

    """
    ### Canonical solution below ###
    def isPalindrome(num):
        return str(num) == str(num)[::-1]
    l = int(left)
    r = int(right)
    cnt = 0
    base = 1
    while base * base <= r:
        if isPalindrome(base) and isPalindrome(base * base):
            if base * base >= l:
                cnt += 1
        base += 1
    return cnt




### Unit tests below ###
def check(candidate):
	assert candidate("500000000000", "1000000000000") == 0
	assert candidate("1000000000", "5000000000") == 0
	assert candidate("50000000000", "100000000000") == 0
	assert candidate("1", "1000") == 5
	assert candidate("1", "1") == 1
	assert candidate("500", "1000") == 0
	assert candidate("200", "500") == 1
	assert candidate("100000000000", "500000000000") == 0
	assert candidate("10000000", "100000000") == 0
	assert candidate("5000000000", "10000000000") == 0
def test_check():
	check(superpalindromesInRange)
# Metadata Difficulty: Hard
# Metadata Topics: math,enumeration
# Metadata Coverage: 100
