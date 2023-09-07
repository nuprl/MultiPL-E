def count_binary_substrings(s: str) -> int:
    """
    Given a binary string s, return the number of non-empty substrings that have the same number of 0's and 1's, and all the 0's and all the 1's in these substrings are grouped consecutively.
    Substrings that occur multiple times are counted the number of times they occur.
 
    Example 1:

    Input: s = "00110011"
    Output: 6
    Explanation: There are 6 substrings that have equal number of consecutive 1's and 0's: "0011", "01", "1100", "10", "0011", and "01".
    Notice that some of these substrings repeat and are counted the number of times they occur.
    Also, "00110011" is not a valid substring because all the 0's (and 1's) are not grouped together.

    Example 2:

    Input: s = "10101"
    Output: 4
    Explanation: There are 4 substrings: "10", "01", "10", "01" that have equal number of consecutive 1's and 0's.

 
    Constraints:

    1 <= s.length <= 105
    s[i] is either '0' or '1'.

    """
    ### Canonical solution below ###
    prev, curr, result = 0, 1, 0
    for i in range(1, len(s)):
        if s[i] == s[i - 1]:
            curr += 1
        else:
            result += min(prev, curr)
            prev, curr = curr, 1
    return result + min(prev, curr)




### Unit tests below ###
def check(candidate):
	assert candidate("00110011") == 6
	assert candidate("1100") == 2
	assert candidate("11001100") == 6
	assert candidate("10") == 1
	assert candidate("0011001100") == 8
	assert candidate("101010") == 5
	assert candidate("111111") == 0
	assert candidate("110011") == 4
	assert candidate("1") == 0
	assert candidate("1010101010") == 9
	assert candidate("00") == 0
	assert candidate("0011") == 2
	assert candidate("0") == 0
	assert candidate("000000") == 0
	assert candidate("10101") == 4
	assert candidate("111000") == 3
	assert candidate("000111") == 3
	assert candidate("0101010101") == 9
	assert candidate("111111000000") == 6
	assert candidate("010101010101") == 11
	assert candidate("000000111111") == 6
	assert candidate("01") == 1
	assert candidate("1100110011") == 8
	assert candidate("11") == 0
	assert candidate("1010") == 3
	assert candidate("101010101010") == 11
def test_check():
	check(count_binary_substrings)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string
# Metadata Coverage: 100
