def shortest_common_supersequence(str1: str, str2: str) -> str:
    """
    Given two strings str1 and str2, return the shortest string that has both str1 and str2 as subsequences. If there are multiple valid strings, return any of them.
    A string s is a subsequence of string t if deleting some number of characters from t (possibly 0) results in the string s.
 
    Example 1:

    Input: str1 = "abac", str2 = "cab"
    Output: "cabac"
    Explanation: 
    str1 = "abac" is a subsequence of "cabac" because we can delete the first "c".
    str2 = "cab" is a subsequence of "cabac" because we can delete the last "ac".
    The answer provided is the shortest such string that satisfies these properties.

    Example 2:

    Input: str1 = "aaaaaaaa", str2 = "aaaaaaaa"
    Output: "aaaaaaaa"

 
    Constraints:

    1 <= str1.length, str2.length <= 1000
    str1 and str2 consist of lowercase English letters.

    """
    ### Canonical solution below ###
    m, n = len(str1), len(str2)
    dp = [[0] * (n + 1) for _ in range(m + 1)]

    for i in range(m + 1):
        for j in range(n + 1):
            if i == 0:
                dp[i][j] = j
            elif j == 0:
                dp[i][j] = i
            elif str1[i - 1] == str2[j - 1]:
                dp[i][j] = 1 + dp[i - 1][j - 1]
            else:
                dp[i][j] = 1 + min(dp[i - 1][j], dp[i][j - 1])

    i, j = m, n
    result = []

    while i > 0 and j > 0:
        if str1[i - 1] == str2[j - 1]:
            result.append(str1[i - 1])
            i -= 1
            j -= 1
        elif dp[i - 1][j] > dp[i][j - 1]:
            j -= 1
            result.append(str2[j])
        else:
            i -= 1
            result.append(str1[i])

    while i > 0:
        i -= 1
        result.append(str1[i])

    while j > 0:
        j -= 1
        result.append(str2[j])

    return "".join(result[::-1])




### Unit tests below ###
def check(candidate):
	assert candidate("aaabbb", "bbbccc") == "aaabbbccc"
	assert candidate("abc", "") == "abc"
	assert candidate("", "") == ""
	assert candidate(
    "aaabbb", "bbbccc"
) == "aaabbbccc"
	assert candidate(
    "abcd", "bcd"
) == "abcd"
	assert candidate("aaaaaaaa", "aaaaaaaa") == "aaaaaaaa"
	assert candidate(
    "abc", "bcd"
) == "abcd"
	assert candidate("abac", "cabac") == "cabac"
	assert candidate("abc", "cde") == "abcde"
	assert candidate(
    "abac", "cab"
) == "cabac"
	assert candidate("baaa", "aaa") == "baaa"
	assert candidate("abcabc", "abcabc") == "abcabc"
	assert candidate("abc", "abc") == "abc"
	assert candidate(
    "ab", "bc"
) == "abc"
	assert candidate("", "aaaa") == "aaaa"
	assert candidate("", "a") == "a"
	assert candidate("abcdefghij", "defghijabc") == "abcdefghijabc"
	assert candidate("abcde", "cde") == "abcde"
	assert candidate("abcdefgh", "abcdefgh") == "abcdefgh"
	assert candidate("", "def") == "def"
	assert candidate(
    "aaabbb", "bbb"
) == "aaabbb"
	assert candidate("abcdef", "abcdef") == "abcdef"
	assert candidate("aaaaaa", "aaaaaa") == "aaaaaa"
	assert candidate(
    "aaaaaaaa", "aaaaaaaa"
) == "aaaaaaaa"
	assert candidate("ab", "ab") == "ab"
def test_check():
	check(shortest_common_supersequence)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
