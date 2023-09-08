def longest_dup_substring(s: str) -> str:
    """
    Given a string s, consider all duplicated substrings: (contiguous) substrings of s that occur 2 or more times. The occurrences may overlap.
    Return any duplicated substring that has the longest possible length. If s does not have a duplicated substring, the answer is "".
 
    Example 1:
    Input: s = "banana"
    Output: "ana"
    Example 2:
    Input: s = "abcd"
    Output: ""

 
    Constraints:

    2 <= s.length <= 3 * 104
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    n = len(s)
    longest_duplicate = ""
    for length in range(n - 1, 0, -1):
        for i in range(n - length + 1):
            substring = s[i:i + length]
            if s.find(substring, i + 1) != -1:
                longest_duplicate = substring
                return longest_duplicate
    return longest_duplicate




### Unit tests below ###
def check(candidate):
	assert candidate("abcd") == ""
	assert candidate("aaaaa") == "aaaa"
	assert candidate("abcdxyzbcd") == "bcd"
	assert candidate("abcabc") == "abc"
	assert candidate("banana") == "ana"
	assert candidate("a") == ""
	assert candidate("zxcvbnmzxcvbnm") == "zxcvbnm"
	assert candidate("abcde") == ""
def test_check():
	check(longest_dup_substring)
# Metadata Difficulty: Hard
# Metadata Topics: string,binary-search,sliding-window,rolling-hash,suffix-array,hash-function
# Metadata Coverage: 100
