def get_happy_string(n: int, k: int) -> str:
    """
    A happy string is a string that:

    consists only of letters of the set ['a', 'b', 'c'].
    s[i] != s[i + 1] for all values of i from 1 to s.length - 1 (string is 1-indexed).

    For example, strings "abc", "ac", "b" and "abcbabcbcb" are all happy strings and strings "aa", "baa" and "ababbc" are not happy strings.
    Given two integers n and k, consider a list of all happy strings of length n sorted in lexicographical order.
    Return the kth string of this list or return an empty string if there are less than k happy strings of length n.
 
    Example 1:

    Input: n = 1, k = 3
    Output: "c"
    Explanation: The list ["a", "b", "c"] contains all happy strings of length 1. The third string is "c".

    Example 2:

    Input: n = 1, k = 4
    Output: ""
    Explanation: There are only 3 happy strings of length 1.

    Example 3:

    Input: n = 3, k = 9
    Output: "cab"
    Explanation: There are 12 different happy string of length 3 ["aba", "abc", "aca", "acb", "bab", "bac", "bca", "bcb", "cab", "cac", "cba", "cbc"]. You will find the 9th string = "cab"

 
    Constraints:

    1 <= n <= 10
    1 <= k <= 100

    """
    ### Canonical solution below ###
    def dfs(s, prev):
        if len(s) == n:
            happy_strings.append(s)
            return
        for c in 'abc':
            if c != prev:
                dfs(s + c, c)

    happy_strings = []
    dfs("", ' ')
    return happy_strings[k - 1] if k <= len(happy_strings) else ""




### Unit tests below ###
def check(candidate):
	assert candidate(1, 10) == ""
	assert candidate(4, 4) == "abcb"
	assert candidate(2, 5) == "ca"
	assert candidate(3, 7) == "bca"
	assert candidate(3, 6) == "bac"
	assert candidate(3, 9) == "cab"
	assert candidate(2, 11) == ""
	assert candidate(3, 2) == "abc"
	assert candidate(2, 7) == ""
	assert candidate(1, 2) == "b"
	assert candidate(3, 11) == "cba"
	assert candidate(4, 7) == "acba"
	assert candidate(2, 3) == "ba"
	assert candidate(3, 8) == "bcb"
	assert candidate(2, 2) == "ac"
	assert candidate(4, 6) == "acac"
	assert candidate(1, 1) == "a"
	assert candidate(1, 7) == ""
	assert candidate(1, 6) == ""
	assert candidate(2, 6) == "cb"
	assert candidate(3, 3) == "aca"
	assert candidate(3, 12) == "cbc"
	assert candidate(2, 1) == "ab"
	assert candidate(1, 8) == ""
	assert candidate(4, 8) == "acbc"
	assert candidate(4, 1) == "abab"
	assert candidate(1, 3) == "c"
	assert candidate(4, 3) == "abca"
	assert candidate(3, 4) == "acb"
	assert candidate(1, 4) == ""
	assert candidate(3, 13) == ""
	assert candidate(3, 5) == "bab"
	assert candidate(4, 5) == "acab"
	assert candidate(2, 9) == ""
	assert candidate(2, 4) == "bc"
	assert candidate(4, 2) == "abac"
	assert candidate(3, 1) == "aba"
	assert candidate(2, 8) == ""
	assert candidate(2, 10) == ""
def test_check():
	check(get_happy_string)
# Metadata Difficulty: Medium
# Metadata Topics: string,backtracking
# Metadata Coverage: 100
