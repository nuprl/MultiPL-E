from typing import List


def sequential_digits(low: int, high: int) -> List[int]:
    """
    An integer has sequential digits if and only if each digit in the number is one more than the previous digit.
    Return a sorted list of all the integers in the range [low, high] inclusive that have sequential digits.
 
    Example 1:
    Input: low = 100, high = 300
    Output: [123,234]
    Example 2:
    Input: low = 1000, high = 13000
    Output: [1234,2345,3456,4567,5678,6789,12345]

 
    Constraints:

    10 <= low <= high <= 10^9

    """
    ### Canonical solution below ###
    result = []
    for i in range(1, 10):
        number = i
        for j in range(i + 1, 10):
            number = number * 10 + j
            if low <= number <= high:
                result.append(number)
    return sorted(result)




### Unit tests below ###
def check(candidate):
	assert candidate(111, 222) == [123]
	assert candidate(100000, 1000000) == [123456, 234567, 345678, 456789]
	assert candidate(1000000, 10000000) == [1234567, 2345678, 3456789]
	assert candidate(5000, 6000) == [5678]
	assert candidate(10, 99) == [12, 23, 34, 45, 56, 67, 78, 89]
	assert candidate(100, 110) == []
	assert candidate(100000, 300000) == [123456, 234567]
	assert candidate(10, 90) == [12, 23, 34, 45, 56, 67, 78, 89]
	assert candidate(10, 10) == []
	assert candidate(578, 579) == []
	assert candidate(234, 345) == [234, 345]
	assert candidate(10000, 30000) == [12345, 23456]
	assert candidate(100, 1000) == [123, 234, 345, 456, 567, 678, 789]
	assert candidate(100, 111) == []
	assert candidate(10, 100) == [12, 23, 34, 45, 56, 67, 78, 89]
	assert candidate(10000000, 100000000) == [12345678, 23456789]
	assert candidate(1000, 13000) == [1234, 2345, 3456, 4567, 5678, 6789, 12345]
	assert candidate(89, 100) == [89]
	assert candidate(0, 99) == [12, 23, 34, 45, 56, 67, 78, 89]
	assert candidate(100, 234) == [123, 234]
	assert candidate(234, 245) == [234]
	assert candidate(11, 22) == [12]
	assert candidate(100000000, 1000000000) == [123456789]
	assert candidate(10, 20) == [12]
	assert candidate(100, 300) == [123, 234]
	assert candidate(123, 234) == [123, 234]
	assert candidate(1234, 3456) == [1234, 2345, 3456]
	assert candidate(100000000, 200000000) == [123456789]
	assert candidate(1000000, 1000000) == []
	assert candidate(234, 1000) == [234, 345, 456, 567, 678, 789]
	assert candidate(234, 456) == [234, 345, 456]
def test_check():
	check(sequential_digits)
# Metadata Difficulty: Medium
# Metadata Topics: enumeration
# Metadata Coverage: 100
