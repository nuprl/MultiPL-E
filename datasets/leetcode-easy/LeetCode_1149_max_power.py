def max_power(s: str) -> int:
    """
    The power of the string is the maximum length of a non-empty substring that contains only one unique character.
    Given a string s, return the power of s.
 
    Example 1:

    Input: s = "leetcode"
    Output: 2
    Explanation: The substring "ee" is of length 2 with the character 'e' only.

    Example 2:

    Input: s = "abbcccddddeeeeedcba"
    Output: 5
    Explanation: The substring "eeeee" is of length 5 with the character 'e' only.

 
    Constraints:

    1 <= s.length <= 500
    s consists of only lowercase English letters.

    """
    ### Canonical solution below ###
    max_power = current_power = 1

    for i in range(1, len(s)):
        if s[i] == s[i-1]:
            current_power += 1
        else:
            max_power = max(max_power, current_power)
            current_power = 1

    return max(max_power, current_power)




### Unit tests below ###
def check(candidate):
	assert candidate(
    "123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890") == 1
	assert candidate("1223334444") == 4
	assert candidate("1234567890") == 1
	assert candidate("triplepillooooow") == 5, "Error with string 'triplepillooooow'"
	assert candidate("11235813213455890") == 2
	assert candidate("9999999999") == 10
	assert candidate(
    "triplepillooooow") == 5, "A substring of length 5 with the character 'o' only"
	assert candidate("11235813213455") == 2
	assert candidate("triplepillooooow") == 5
	assert candidate("c") == 1
	assert candidate(
    "tourist") == 1, "A substring of length 1 with the character 't' only"
	assert candidate(
    "leetcode") == 2, "A single unique character appears twice in your string"
	assert candidate("tourist") == 1
	assert candidate(
    "hooraaaaaaaaaaay") == 11, "A substring of length 11 with the character 'a' only"
	assert candidate(
    "cc") == 2, "Error with string 'cc'"
	assert candidate("1111111") == 7
	assert candidate("11111222223333344444") == 5
	assert candidate(
    "abbcccddddeeeeedcba") == 5, "A substring of length 5 with the character 'e' only"
	assert candidate("987654321") == 1
	assert candidate("hh") == 2
	assert candidate("cc") == 2
	assert candidate(
    "leetcode") == 2, "A substring of length 2 with the character 'e' only"
	assert candidate("112233445566") == 2
	assert candidate("12345678") == 1
	assert candidate("31415926535897932384") == 1
	assert candidate("hooraaaaaaaaaaay") == 11
	assert candidate(
    "abbcccddddeeeeedcba") == 5, "Your string contains a substring with 5 unique characters"
	assert candidate(
    "leetcode") == 2, "Error with string 'leetcode'"
	assert candidate("tourist") == 1, "Error with string 'tourist'"
	assert candidate("111119999911111") == 5
	assert candidate("babcbabcbaccba") == 2
	assert candidate("hooraaaaaaaaaaay") == 11, "Error with string 'hooraaaaaaaaaaay'"
	assert candidate("314159265358") == 1
	assert candidate(
    "abbcccddddeeeeedcba") == 5, "Error with string 'abbcccddddeeeeedcba'"
def test_check():
	check(max_power)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
