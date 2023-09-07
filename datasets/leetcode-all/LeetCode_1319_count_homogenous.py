def count_homogenous(s: str) -> int:
    """
    Given a string s, return the number of homogenous substrings of s. Since the answer may be too large, return it modulo 109 + 7.
    A string is homogenous if all the characters of the string are the same.
    A substring is a contiguous sequence of characters within a string.
 
    Example 1:

    Input: s = "abbcccaa"
    Output: 13
    Explanation: The homogenous substrings are listed as below:
    "a"   appears 3 times.
    "aa"  appears 1 time.
    "b"   appears 2 times.
    "bb"  appears 1 time.
    "c"   appears 3 times.
    "cc"  appears 2 times.
    "ccc" appears 1 time.
    3 + 1 + 2 + 1 + 3 + 2 + 1 = 13.
    Example 2:

    Input: s = "xy"
    Output: 2
    Explanation: The homogenous substrings are "x" and "y".
    Example 3:

    Input: s = "zzzzz"
    Output: 15

 
    Constraints:

    1 <= s.length <= 105
    s consists of lowercase letters.
    """
    ### Canonical solution below ###
    MOD = 1000000007
    count, total = 1, 0
    for i in range(1, len(s)):
        count = count + 1 if s[i] == s[i - 1] else 1
        total = (total + count) % MOD
    return (total + count) % MOD




### Unit tests below ###
def check(candidate):
	assert candidate("xy") == 2
	assert candidate("abcabcabcabcabcabcabc") == 21
	assert candidate("abcdeabcdeabcdeabcdeabcdeabcde") == 30
	assert candidate("abcabcabcabcabcabc") == 18
	assert candidate("abcabcabc") == 9
	assert candidate("abcde") == 5
	assert candidate("abcdeabcdeabcdeabcde") == 20
	assert candidate("z") == 1
	assert candidate("abcabcabcabcabcabcabcabc") == 24
	assert candidate("a") == 1
	assert candidate("abcabcabcabcabc") == 15
	assert candidate("abcdabcdabcd") == 12
	assert candidate("abcdabcdabcdabcdabcd") == 20
	assert candidate("abcdeabcdeabcde") == 15
	assert candidate("ababababab") == 10
	assert candidate("abcdeabcdeabcdeabcdeabcde") == 25
	assert candidate("abcdabcdabcdabcd") == 16
	assert candidate("abc") == 3
def test_check():
	check(count_homogenous)
# Metadata Difficulty: Medium
# Metadata Topics: math,string
# Metadata Coverage: 100
