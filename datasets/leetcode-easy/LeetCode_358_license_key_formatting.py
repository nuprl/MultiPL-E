def license_key_formatting(s: str, k: int) -> str:
    """
    You are given a license key represented as a string s that consists of only alphanumeric characters and dashes. The string is separated into n + 1 groups by n dashes. You are also given an integer k.
    We want to reformat the string s such that each group contains exactly k characters, except for the first group, which could be shorter than k but still must contain at least one character. Furthermore, there must be a dash inserted between two groups, and you should convert all lowercase letters to uppercase.
    Return the reformatted license key.
 
    Example 1:

    Input: s = "5F3Z-2e-9-w", k = 4
    Output: "5F3Z-2E9W"
    Explanation: The string s has been split into two parts, each part has 4 characters.
    Note that the two extra dashes are not needed and can be removed.

    Example 2:

    Input: s = "2-5g-3-J", k = 2
    Output: "2-5G-3J"
    Explanation: The string s has been split into three parts, each part has 2 characters except the first part as it could be shorter as mentioned above.

 
    Constraints:

    1 <= s.length <= 105
    s consists of English letters, digits, and dashes '-'.
    1 <= k <= 104

    """
    ### Canonical solution below ###
    result = []
    count = 0
    for c in reversed(s):
        if c != '-':
            if count == k:
                result.append('-')
                count = 0
            result.append(c.upper())
            count += 1
    return ''.join(reversed(result))




### Unit tests below ###
def check(candidate):
	assert candidate("aaaa-bbbb-cccc", 4) == "AAAA-BBBB-CCCC"
	assert candidate("1a-2b-3c", 3) == "1A2-B3C"
	assert candidate("aaaa-bbbb-cccc", 2) == "AA-AA-BB-BB-CC-CC"
	assert candidate("abc-def", 3) == "ABC-DEF"
	assert candidate("1a-2b-3c", 6) == "1A2B3C"
	assert candidate("2-5g-3-J", 2) == "2-5G-3J"
	assert candidate("123-456", 3) == "123-456"
	assert candidate("123-456-abc", 3) == "123-456-ABC"
	assert candidate("5F3Z-2e-9-w", 4) == "5F3Z-2E9W"
	assert candidate(
    "2-g-3-J", 2) == "2G-3J"
	assert candidate("a-a-a", 1) == "A-A-A"
	assert candidate("1", 3) == "1"
	assert candidate("1a2b3c", 2) == "1A-2B-3C"
	assert candidate("aaaa", 2) == "AA-AA"
	assert candidate("1-1-1-1-1", 1) == "1-1-1-1-1"
	assert candidate("aaaa-bbbb-cccc", 1) == "A-A-A-A-B-B-B-B-C-C-C-C"
	assert candidate("---", 100) == ""
	assert candidate("1a-2b-3c", 2) == "1A-2B-3C"
def test_check():
	check(license_key_formatting)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
