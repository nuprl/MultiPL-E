def minPartitions(n: str) -> int:
    """
    A decimal number is called deci-binary if each of its digits is either 0 or 1 without any leading zeros. For example, 101 and 1100 are deci-binary, while 112 and 3001 are not.
    Given a string n that represents a positive decimal integer, return the minimum number of positive deci-binary numbers needed so that they sum up to n.
 
    Example 1:

    Input: n = "32"
    Output: 3
    Explanation: 10 + 11 + 11 = 32

    Example 2:

    Input: n = "82734"
    Output: 8

    Example 3:

    Input: n = "27346209830709182346"
    Output: 9

 
    Constraints:

    1 <= n.length <= 105
    n consists of only digits.
    n does not contain any leading zeros and represents a positive integer.

    """
    ### Canonical solution below ###
    max_digit = 0
    for c in n:
        max_digit = max(max_digit, int(c))
        if max_digit == 9:
            break
    return max_digit




### Unit tests below ###
def check(candidate):
	assert candidate("9876543210") == 9
	assert candidate(
    "2468013579098765432101234567890123456789012345678901234567890") == 9
	assert candidate("2468135790") == 9
	assert candidate("32") == 3
	assert candidate("1111100000") == 1
	assert candidate("1357924680") == 9
	assert candidate("111111111") == 1
	assert candidate("82734") == 8
	assert candidate("23456789") == 9
	assert candidate(
    "246801357909876543210123456789") == 9
	assert candidate(
    "246801357909876543210") == 9
	assert candidate("98765432") == 9
	assert candidate("1029384756") == 9
	assert candidate("54321") == 5
	assert candidate("1234567890") == 9
	assert candidate("2468013579") == 9
	assert candidate("0000000001") == 1
	assert candidate("9999999999") == 9
	assert candidate("123498765") == 9
	assert candidate("123456789") == 9
	assert candidate("9753108642") == 9
	assert candidate("8642097531") == 9
	assert candidate("571471389") == 9
	assert candidate("1234509876") == 9
def test_check():
	check(minPartitions)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy
# Metadata Coverage: 100
