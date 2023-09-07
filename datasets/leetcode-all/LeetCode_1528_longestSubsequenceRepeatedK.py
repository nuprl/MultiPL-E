def longestSubsequenceRepeatedK(s: str, k: int) -> str:
    """
    You are given a string s of length n, and an integer k. You are tasked to find the longest subsequence repeated k times in string s.
    A subsequence is a string that can be derived from another string by deleting some or no characters without changing the order of the remaining characters.
    A subsequence seq is repeated k times in the string s if seq * k is a subsequence of s, where seq * k represents a string constructed by concatenating seq k times.

    For example, "bba" is repeated 2 times in the string "bababcba", because the string "bbabba", constructed by concatenating "bba" 2 times, is a subsequence of the string "bababcba".

    Return the longest subsequence repeated k times in string s. If multiple such subsequences are found, return the lexicographically largest one. If there is no such subsequence, return an empty string.
 
    Example 1:


    Input: s = "letsleetcode", k = 2
    Output: "let"
    Explanation: There are two longest subsequences repeated 2 times: "let" and "ete".
    "let" is the lexicographically largest one.

    Example 2:

    Input: s = "bb", k = 2
    Output: "b"
    Explanation: The longest subsequence repeated 2 times is "b".

    Example 3:

    Input: s = "ab", k = 2
    Output: ""
    Explanation: There is no subsequence repeated 2 times. Empty string is returned.

 
    Constraints:

    n == s.length
    2 <= n, k <= 2000
    2 <= n < k * 8
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    count = [0] * 26
    for c in s:
        count[ord(c) - ord('a')] += 1
    seq = "".join(chr(i + ord('a')) * (count[i] // k) for i in range(26) if count[i] >= k)

    def dp(i, j):
        if (i, j) in memo:
            return memo[(i, j)]
        if i >= len(seq) or j >= len(seq):
            return 0
        if seq[i] == seq[j]:
            res = 1 + dp(i + 1, j + 1)
        else:
            res = max(dp(i + 1, j), dp(i, j + 1))
        memo[(i, j)] = res
        return res

    memo = {}
    res = []
    i, j = 0, 0
    while j < len(seq) and len(res) < len(seq) // k:
        if not res or seq[j] > res[-1]:
            if dp(i, j) >= (len(seq) // k - len(res)) * 2:
                res.append(seq[j])
                i = j + 1
        j += 1

    return "".join(res)




### Unit tests below ###
def check(candidate):
	assert candidate("ab", 2) == ""
	assert candidate("", 1) == ""
	assert candidate(
    "ab", 2) == ""
	assert candidate("abcde", 1) == ""
	assert candidate("bbcbbabcba", 6) == ""
	assert candidate("bbcbbabcba", 4) == ""
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 1001) == ""
	assert candidate("", 2) == ""
	assert candidate("", 1001) == ""
	assert candidate("bbcbbabcba", 7) == ""
	assert candidate("abcde", 3) == ""
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 3) == "a"
	assert candidate("abacadaeafagahaijj", 2) == "a"
	assert candidate("aabbccddeeffgghhiijj", 3) == ""
	assert candidate("bbcbbabcba", 5) == ""
	assert candidate("abacadaeafagahaiaj", 2) == "a"
	assert candidate("abababab", 2) == "ab"
	assert candidate("ab", 2) == "", "Longest subsequence should be: ''"
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 1000) == ""
def test_check():
	check(longestSubsequenceRepeatedK)
# Metadata Difficulty: Hard
# Metadata Topics: string,backtracking,greedy,counting,enumeration
# Metadata Coverage: 100
