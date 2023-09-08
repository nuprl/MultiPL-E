from typing import List


def self_dividing_numbers(left: int, right: int) -> List[int]:
    """
    A self-dividing number is a number that is divisible by every digit it contains.

    For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.

    A self-dividing number is not allowed to contain the digit zero.
    Given two integers left and right, return a list of all the self-dividing numbers in the range [left, right].
 
    Example 1:
    Input: left = 1, right = 22
    Output: [1,2,3,4,5,6,7,8,9,11,12,15,22]
    Example 2:
    Input: left = 47, right = 85
    Output: [48,55,66,77]

 
    Constraints:

    1 <= left <= right <= 104

    """
    ### Canonical solution below ###
    def is_self_dividing(num):
        n = num
        while n:
            digit = n % 10
            if digit == 0 or num % digit != 0:
                return False
            n //= 10
        return True
    return [i for i in range(left, right+1) if is_self_dividing(i)]




### Unit tests below ###
def check(candidate):
	assert candidate(10, 20) == [11, 12, 15]
	assert candidate(70, 80) == [77]
	assert candidate(40, 50) == [44, 48]
	assert candidate(50, 70) == [55, 66]
	assert candidate(60, 70) == [66]
	assert candidate(20, 21) == []
	assert candidate(20, 22) == [22]
	assert candidate(47, 85) == [48,55,66,77]
	assert candidate(1, 1) == [1]
	assert candidate(9, 9) == [9]
	assert candidate(10, 13) == [11, 12]
	assert candidate(30, 40) == [33, 36]
	assert candidate(10, 15) == [11, 12, 15]
	assert candidate(10, 12) == [11, 12]
	assert candidate(12, 15) == [12, 15]
	assert candidate(1, 22) == [1,2,3,4,5,6,7,8,9,11,12,15,22]
	assert candidate(10, 19) == [11, 12, 15]
	assert candidate(80, 90) == [88]
def test_check():
	check(self_dividing_numbers)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
