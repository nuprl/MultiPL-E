from typing import List


def countSteppingNumbers(low: int, high: int) -> List[int]:
    """
    Given two positive integers low and high represented as strings, find the count of stepping numbers in the inclusive range [low, high].
    A stepping number is an integer such that all of its adjacent digits have an absolute difference of exactly 1.
    Return an integer denoting the count of stepping numbers in the inclusive range [low, high]. 
    Since the answer may be very large, return it modulo 109 + 7.
    Note: A stepping number should not have a leading zero.
 
    Example 1:

    Input: low = "1", high = "11"
    Output: 10
    Explanation: The stepping numbers in the range [1,11] are 1, 2, 3, 4, 5, 6, 7, 8, 9 and 10. There are a total of 10 stepping numbers in the range. Hence, the output is 10.
    Example 2:

    Input: low = "90", high = "101"
    Output: 2
    Explanation: The stepping numbers in the range [90,101] are 98 and 101. There are a total of 2 stepping numbers in the range. Hence, the output is 2. 
 
    Constraints:

    1 <= int(low) <= int(high) < 10100
    1 <= low.length, high.length <= 100
    low and high consist of only digits.
    low and high don't have any leading zeros.

    """
    ### Canonical solution below ###
    results = []
    for i in range(low, high+1):
        prev = -1
        j = i
        is_stepping = True
        while j > 0:
            digit = j % 10
            if prev != -1 and abs(prev - digit) != 1:
                is_stepping = False
                break
            prev = digit
            j //= 10
        if is_stepping:
            results.append(i)
    return results




### Unit tests below ###
def check(candidate):
	assert candidate(0, 21) == [0,1,2,3,4,5,6,7,8,9,10,12,21]
	assert candidate(1, 3) == [1, 2, 3]
	assert candidate(100, 200) == [101, 121, 123]
	assert candidate(10, 15) == [10,12]
	assert candidate(10, 10) == [10]
	assert candidate(5000, 5000) == []
	assert candidate(1, 1) == [1]
	assert candidate(100, 100) == []
	assert candidate(2, 3) == [2, 3]
	assert candidate(0, 1) == [0, 1]
	assert candidate(1000000000000000000, 1000000000000000000) == []
	assert candidate(90, 200) == [98, 101, 121, 123]
	assert candidate(90, 101) == [98, 101]
	assert candidate(0, 0) == [0]
	assert candidate(10, 25) == [10, 12, 21, 23]
	assert candidate(111, 111) == []
	assert candidate(1000, 1000) == []
	assert candidate(1, 2) == [1, 2]
	assert candidate(1000000000, 1000000000) == []
def test_check():
	check(countSteppingNumbers)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
