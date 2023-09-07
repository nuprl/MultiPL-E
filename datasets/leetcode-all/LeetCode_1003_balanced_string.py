def balanced_string(s: str) -> int:
    """
    You are given a string s of length n containing only four kinds of characters: 'Q', 'W', 'E', and 'R'.
    A string is said to be balanced if each of its characters appears n / 4 times where n is the length of the string.
    Return the minimum length of the substring that can be replaced with any other string of the same length to make s balanced. If s is already balanced, return 0.
 
    Example 1:

    Input: s = "QWER"
    Output: 0
    Explanation: s is already balanced.

    Example 2:

    Input: s = "QQWE"
    Output: 1
    Explanation: We need to replace a 'Q' to 'R', so that "RQWE" (or "QRWE") is balanced.

    Example 3:

    Input: s = "QQQW"
    Output: 2
    Explanation: We can replace the first "QQ" to "ER". 

 
    Constraints:

    n == s.length
    4 <= n <= 105
    n is a multiple of 4.
    s contains only 'Q', 'W', 'E', and 'R'.

    """
    ### Canonical solution below ###
    n = len(s)
    freq_map = {}
    for c in s:
        freq_map[c] = freq_map.get(c, 0) + 1

    i = 0
    result = n
    for j in range(n):
        freq_map[s[j]] -= 1
        while i < n and all(freq_map.get(c, 0) <= n // 4 for c in "QWER"):
            result = min(result, j - i + 1)
            freq_map[s[i]] += 1
            i += 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("Q") == 1
	assert candidate("QQQWEER") == 4
	assert candidate("QWE") == 3
	assert candidate("QQWEER") == 3
	assert candidate("QQQQWWWWWWEEEERRRRR") == 7
	assert candidate("QW") == 2
def test_check():
	check(balanced_string)
# Metadata Difficulty: Medium
# Metadata Topics: string,sliding-window
# Metadata Coverage: 100
