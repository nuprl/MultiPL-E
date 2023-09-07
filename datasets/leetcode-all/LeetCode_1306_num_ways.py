from typing import List


def num_ways(words: List[str], target: str) -> int:
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
    n, m = len(words), len(target)
    MOD = 10**9 + 7
    cnt = [0] * 26
    for word in words:
        for ch in word:
            cnt[ord(ch) - ord('a')] += 1
    dp = [0] * (m + 1)
    dp[0] = 1
    for ch in target:
        for i in range(m - 1, -1, -1):
            dp[i + 1] += dp[i] * cnt[ord(ch) - ord('a')]
            dp[i + 1] %= MOD
    return dp[m]




### Unit tests below ###
def check(candidate):
	assert candidate(["aaa"], "") == 1
	assert candidate(["abc", "acd", "bcd"], "b") == 2
	assert candidate(["aaa", "aa", "a"], "") == 1
	assert candidate(["baba", "baba", "baba"], "b") == 6
	assert candidate(["aaa"], "abababab") == 0
	assert candidate(["abc", "acd", "bcd"], "cd") == 6
	assert candidate(["abc", "acd", "bcd"], "ab") == 4
	assert candidate(["aaa"], "aab") == 0
	assert candidate(["abc", "acd", "bcd"], "a") == 2
	assert candidate(["aaa", "aaa", "aaa"], "b") == 0
	assert candidate(["abc", "acd", "bcd"], "ac") == 6
	assert candidate(["abc", "acd", "bcd"], "d") == 2
	assert candidate(["abc", "acd", "bcd"], "c") == 3
def test_check():
	check(num_ways)
# Metadata Difficulty: Hard
# Metadata Topics: array,string,dynamic-programming
# Metadata Coverage: 100
