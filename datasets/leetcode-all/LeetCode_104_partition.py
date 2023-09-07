from typing import List


def partition(s: str) -> List[List[str]]:
    """
    Given a string s, partition s such that every substring of the partition is a palindrome. Return all possible palindrome partitioning of s.
 
    Example 1:
    Input: s = "aab"
    Output: [["a","a","b"],["aa","b"]]
    Example 2:
    Input: s = "a"
    Output: [["a"]]

 
    Constraints:

    1 <= s.length <= 16
    s contains only lowercase English letters.

    """
    ### Canonical solution below ###
    def dfs(s, start, results, current):
        if start == len(s):
            results.append(current[:])
            return

        for end in range(start, len(s)):
            if isPalindrome(s, start, end):
                current.append(s[start:end+1])
                dfs(s, end + 1, results, current)
                current.pop()

    def isPalindrome(s, start, end):
        while start < end:
            if s[start] != s[end]:
                return False
            start += 1
            end -= 1
        return True
    results = []
    dfs(s, 0, results, [])
    return results




### Unit tests below ###
def check(candidate):
	assert candidate("aba") == [["a", "b", "a"], ["aba"]]
	assert candidate("abc") == [["a", "b", "c"]]
	assert candidate("a") == [["a"]]
	assert candidate("dad") == [["d", "a", "d"], ["dad"]]
	assert candidate("abcd") == [["a", "b", "c", "d"]]
	assert candidate("aa") == [["a", "a"], ["aa"]]
	assert candidate("abba") == [["a", "b", "b", "a"], ["a", "bb", "a"], ["abba"]]
	assert candidate("aab") == [["a","a","b"],["aa","b"]]
	assert candidate("pop") == [["p", "o", "p"], ["pop"]]
	assert candidate("aaa") == [["a", "a", "a"], ["a", "aa"], ["aa", "a"], ["aaa"]]
	assert candidate("deed") == [["d", "e", "e", "d"], ["d", "ee", "d"], ["deed"]]
def test_check():
	check(partition)
# Metadata Difficulty: Medium
# Metadata Topics: string,dynamic-programming,backtracking
# Metadata Coverage: 100
