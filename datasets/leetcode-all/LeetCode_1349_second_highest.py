def second_highest(s: str) -> int:
    """
    Given an alphanumeric string s, return the second largest numerical digit that appears in s, or -1 if it does not exist.
    An alphanumeric string is a string consisting of lowercase English letters and digits.
 
    Example 1:

    Input: s = "dfa12321afd"
    Output: 2
    Explanation: The digits that appear in s are [1, 2, 3]. The second largest digit is 2.

    Example 2:

    Input: s = "abc1111"
    Output: -1
    Explanation: The digits that appear in s are [1]. There is no second largest digit. 

 
    Constraints:

    1 <= s.length <= 500
    s consists of only lowercase English letters and/or digits.

    """
    ### Canonical solution below ###
    largest = -1
    second_largest = -1
    for c in s:
        if c.isdigit():
            d = int(c)
            if d > largest:
                second_largest = largest
                largest = d
            elif d < largest and d > second_largest:
                second_largest = d
    return second_largest




### Unit tests below ###
def check(candidate):
	assert candidate("a") == -1
	assert candidate("abcdefg") == -1
	assert candidate("11") == -1
	assert candidate(
    "123456789098765432101234567890") == 8
	assert candidate("1234567890") == 8
	assert candidate("abc1111") == -1
	assert candidate("21") == 1
	assert candidate("a1b2c3") == 2
	assert candidate("111223334445555") == 4
	assert candidate("1") == -1
	assert candidate("ab2cd4ef6") == 4
	assert candidate("0000001") == 0
	assert candidate("9876543210") == 8
	assert candidate("0000001111223456789") == 8
	assert candidate("22222222222222222222") == -1
	assert candidate("dfa12321afd") == 2
def test_check():
	check(second_highest)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string
# Metadata Coverage: 100
