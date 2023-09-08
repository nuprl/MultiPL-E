def num_sub(s: str) -> int:
    """
    Given a binary string s, return the number of substrings with all characters 1's. Since the answer may be too large, return it modulo 109 + 7.
 
    Example 1:

    Input: s = "0110111"
    Output: 9
    Explanation: There are 9 substring in total with only 1's characters.
    "1" -> 5 times.
    "11" -> 3 times.
    "111" -> 1 time.
    Example 2:

    Input: s = "101"
    Output: 2
    Explanation: Substring "1" is shown 2 times in s.

    Example 3:

    Input: s = "111111"
    Output: 21
    Explanation: Each substring contains only 1's characters.

 
    Constraints:

    1 <= s.length <= 105
    s[i] is either '0' or '1'.

    """
    ### Canonical solution below ###
    mod = 1000000007
    result = 0
    count = 0
    for c in s:
        count = count + 1 if c == '1' else 0
        result = (result + count) % mod
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("000") == 0
	assert candidate("00111") == 6
	assert candidate("00100") == 1
	assert candidate("10110") == 4
	assert candidate("11100") == 6
	assert candidate("1") == 1
	assert candidate(
    "00001") == 1
	assert candidate("00010") == 1
	assert candidate("00001") == 1
	assert candidate("111111") == 21
	assert candidate("111") == 6
	assert candidate("10001") == 2
	assert candidate("11110") == 10
	assert candidate("1101") == 4
	assert candidate("01000") == 1
	assert candidate("101") == 2
	assert candidate("01111") == 10
	assert candidate("10000") == 1
	assert candidate("11111") == 15
	assert candidate("00011") == 3
def test_check():
	check(num_sub)
# Metadata Difficulty: Medium
# Metadata Topics: math,string
# Metadata Coverage: 100
