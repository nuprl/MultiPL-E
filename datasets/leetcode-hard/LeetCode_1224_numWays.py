from typing import List


def numWays(words: List[str], target: str) -> int:
    """
    You are given a list of strings of the same length words and a string target.
    Your task is to form target using the given words under the following rules:

    target should be formed from left to right.
    To form the ith character (0-indexed) of target, you can choose the kth character of the jth string in words if target[i] = words[j][k].
    Once you use the kth character of the jth string of words, you can no longer use the xth character of any string in words where x <= k. In other words, all characters to the left of or at index k become unusuable for every string.
    Repeat the process until you form the string target.

    Notice that you can use multiple characters from the same string in words provided the conditions above are met.
    Return the number of ways to form target from words. Since the answer may be too large, return it modulo 109 + 7.
 
    Example 1:

    Input: words = ["acca","bbbb","caca"], target = "aba"
    Output: 6
    Explanation: There are 6 ways to form target.
    "aba" -> index 0 ("acca"), index 1 ("bbbb"), index 3 ("caca")
    "aba" -> index 0 ("acca"), index 2 ("bbbb"), index 3 ("caca")
    "aba" -> index 0 ("acca"), index 1 ("bbbb"), index 3 ("acca")
    "aba" -> index 0 ("acca"), index 2 ("bbbb"), index 3 ("acca")
    "aba" -> index 1 ("caca"), index 2 ("bbbb"), index 3 ("acca")
    "aba" -> index 1 ("caca"), index 2 ("bbbb"), index 3 ("caca")

    Example 2:

    Input: words = ["abba","baab"], target = "bab"
    Output: 4
    Explanation: There are 4 ways to form target.
    "bab" -> index 0 ("baab"), index 1 ("baab"), index 2 ("abba")
    "bab" -> index 0 ("baab"), index 1 ("baab"), index 3 ("baab")
    "bab" -> index 0 ("baab"), index 2 ("baab"), index 3 ("baab")
    "bab" -> index 1 ("abba"), index 2 ("baab"), index 3 ("baab")

 
    Constraints:

    1 <= words.length <= 1000
    1 <= words[i].length <= 1000
    All strings in words have the same length.
    1 <= target.length <= 1000
    words[i] and target contain only lowercase English letters.

    """
    ### Canonical solution below ###
    n = len(words)
    m = len(target)
    count = [[0] * 26 for _ in range(n)]
    dp = [[0] * n for _ in range(m)]
    mod = 1000000007

    for i, word in enumerate(words):
        for c in word:
            count[i][ord(c) - ord('a')] += 1

    for i in range(n):
        dp[0][i] = count[i][ord(target[0]) - ord('a')]

    for i in range(1, m):
        for j in range(n):
            for k in range(n):
                dp[i][j] = (dp[i][j] + dp[i-1][k] * count[j][ord(target[i]) - ord('a')]) % mod

    return sum(dp[m-1]) % mod




### Unit tests below ###
def check(candidate):
	assert candidate(["abc", "def", "ghi"], "def") == 1
	assert candidate(["abcd", "efgh", "ijkl", "mnop", "qrst", "uvwx", "yz"], "qrst") == 1
	assert candidate(["abc", "def", "ghi"], "ghi") == 1
	assert candidate(["abc", "def", "ghi"], "de") == 1
	assert candidate(["abcd"], "abcd") == 1
	assert candidate(["abc", "def", "ghi"], "xyz") == 0
	assert candidate(["a", "a", "a", "a", "a", "a"], "eeee") == 0
	assert candidate(["abcd"], "ab") == 1
	assert candidate(["abc", "def", "ghi"], "abc") == 1
	assert candidate(["aaa", "aaa", "aaa"], "abcc") == 0
def test_check():
	check(numWays)
# Metadata Difficulty: Hard
# Metadata Topics: array,string,dynamic-programming
# Metadata Coverage: 100
