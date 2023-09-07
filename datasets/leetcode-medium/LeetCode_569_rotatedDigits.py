def rotatedDigits(n: int) -> int:
    """
    An integer x is a good if after rotating each digit individually by 180 degrees, we get a valid number that is different from x. Each digit must be rotated - we cannot choose to leave it alone.
    A number is valid if each digit remains a digit after rotation. For example:

    0, 1, and 8 rotate to themselves,
    2 and 5 rotate to each other (in this case they are rotated in a different direction, in other words, 2 or 5 gets mirrored),
    6 and 9 rotate to each other, and
    the rest of the numbers do not rotate to any other number and become invalid.

    Given an integer n, return the number of good integers in the range [1, n].
 
    Example 1:

    Input: n = 10
    Output: 4
    Explanation: There are four good numbers in the range [1, 10] : 2, 5, 6, 9.
    Note that 1 and 10 are not good numbers, since they remain unchanged after rotating.

    Example 2:

    Input: n = 1
    Output: 0

    Example 3:

    Input: n = 2
    Output: 1

 
    Constraints:

    1 <= n <= 104

    """
    ### Canonical solution below ###
    def isGood(num: int) -> bool:
        changed = False
        while num:
            digit = num % 10
            if digit in (3, 4, 7):
                return False
            if digit in (2, 5, 6, 9):
                changed = True
            num //= 10
        return changed
    count = 0
    for i in range(1, n + 1):
        if isGood(i):
            count += 1
    return count




### Unit tests below ###
def check(candidate):
	assert candidate(15) == 6
	assert candidate(5) == 2
	assert candidate(9) == 4
	assert candidate(2) == 1
	assert candidate(30) == 15
	assert candidate(1) == 0
	assert candidate(10) == 4
	assert candidate(20) == 9
	assert candidate(18) == 7
	assert candidate(40) == 15
	assert candidate(100) == 40
	assert candidate(45) == 15
	assert candidate(12) == 5
def test_check():
	check(rotatedDigits)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming
# Metadata Coverage: 100
