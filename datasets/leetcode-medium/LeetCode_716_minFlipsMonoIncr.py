def minFlipsMonoIncr(s: str) -> int:
    """
    A binary string is monotone increasing if it consists of some number of 0's (possibly none), followed by some number of 1's (also possibly none).
    You are given a binary string s. You can flip s[i] changing it from 0 to 1 or from 1 to 0.
    Return the minimum number of flips to make s monotone increasing.
 
    Example 1:

    Input: s = "00110"
    Output: 1
    Explanation: We flip the last digit to get 00111.

    Example 2:

    Input: s = "010110"
    Output: 2
    Explanation: We flip to get 011111, or alternatively 000111.

    Example 3:

    Input: s = "00011000"
    Output: 2
    Explanation: We flip to get 00000000.

 
    Constraints:

    1 <= s.length <= 105
    s[i] is either '0' or '1'.

    """
    ### Canonical solution below ###
    flipCount, oneCount = 0, 0
    for c in s:
        if c == '1':
            oneCount += 1
        else:
            flipCount = min(flipCount + 1, oneCount)
    return flipCount




### Unit tests below ###
def check(candidate):
	assert candidate("01110") == 1
	assert candidate("100010") == 2
	assert candidate("0011") == 0
	assert candidate("0101010") == 3
	assert candidate("1010101") == 3
	assert candidate("00110") == 1
	assert candidate("00011000") == 2
	assert candidate("00010") == 1
	assert candidate("000") == 0
	assert candidate("000111") == 0
	assert candidate("0011000") == 2
	assert candidate("10101") == 2
	assert candidate("111") == 0
	assert candidate("0") == 0
	assert candidate(
    "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000") == 0
	assert candidate("11111") == 0
	assert candidate("0111") == 0
	assert candidate("010110") == 2
	assert candidate("00000") == 0
	assert candidate("101") == 1
	assert candidate("0000000") == 0
	assert candidate("1") == 0
	assert candidate("0001") == 0
	assert candidate("10011") == 1
	assert candidate("00111") == 0
	assert candidate("00100") == 1
	assert candidate("01011") == 1
	assert candidate("1001001") == 2
	assert candidate("01") == 0
	assert candidate("1001") == 1
	assert candidate("00001111") == 0
	assert candidate("000100000") == 1
	assert candidate("010") == 1
	assert candidate("0110") == 1
	assert candidate(
    "00011000") == 2
def test_check():
	check(minFlipsMonoIncr)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
