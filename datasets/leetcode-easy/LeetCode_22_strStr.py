def strStr(haystack: str, needle: str) -> int:
    """
    Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.
 
    Example 1:

    Input: haystack = "sadbutsad", needle = "sad"
    Output: 0
    Explanation: "sad" occurs at index 0 and 6.
    The first occurrence is at index 0, so we return 0.

    Example 2:

    Input: haystack = "leetcode", needle = "leeto"
    Output: -1
    Explanation: "leeto" did not occur in "leetcode", so we return -1.

 
    Constraints:

    1 <= haystack.length, needle.length <= 104
    haystack and needle consist of only lowercase English characters.

    """
    ### Canonical solution below ###
    if not needle:
        return 0
    try:
        index = haystack.index(needle)
        return index
    except ValueError:
        return -1




### Unit tests below ###
def check(candidate):
	assert candidate("asdfasdfasdfasdfasdfasdf", "asdfasdfasdf") == 0
	assert candidate("haystackhaystackhaystack", "haystackhay") == 0
	assert candidate("a", "") == 0
	assert candidate("aa", "aaa") == -1
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab") == -1
	assert candidate("", "abc") == -1
	assert candidate("aaaaa", "bbaa") == -1
	assert candidate("aaa", "aa") == 0
	assert candidate("abc", "") == 0
	assert candidate("haystackneedlehaystack", "needle") == 8
	assert candidate("haystackhaystackhaystack", "haystackhaystack") == 0
	assert candidate("", "aaa") == -1
	assert candidate("aaa", "aaaa") == -1
	assert candidate("leetcode", "leetcode") == 0
	assert candidate("abc", "b") == 1
	assert candidate("haystackhaystackhaystack", "haystack") == 0
	assert candidate("", "aaaa") == -1
	assert candidate("a", "b") == -1
	assert candidate("a", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == -1
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
               "aaaa") == 0
	assert candidate("abc", "c") == 2
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
               "a") == 0
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "a") == 0
	assert candidate("haystackhaystackhaystack", "haystackhaystackhaystackhay") == -1
	assert candidate("aaaaaaaaaaaaaaaaaaaaa", "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == -1
	assert candidate("hello", "ll") == 2
	assert candidate("abc", "abc") == 0
	assert candidate("a", "a") == 0
	assert candidate("haystackhaystackhaystack", "needle") == -1
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahaystack",
               "haystack") == 35
	assert candidate("abc", "ab") == 0
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", "aaaaaaaaaaaaaaaabbbbbaaaa") == -1
	assert candidate("abc", "a") == 0
	assert candidate("leetcode", "leetcodeleet") == -1
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == -1
	assert candidate("haystackhaystackhaystack", "haystackhaystackhaystack") == 0
	assert candidate("leetcode", "code") == 4
	assert candidate("abc", "bc") == 1
	assert candidate("aaaaa", "bba") == -1
	assert candidate("", "") == 0
	assert candidate("leetcode", "hello") == -1
	assert candidate("leetcode", "leet") == 0
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaahaystack", "haystack") == 35
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == -1
	assert candidate("", "a") == -1
	assert candidate("mississippi", "issip") == 4
	assert candidate("hello", "") == 0
	assert candidate("aaaaa", "baaa") == -1
	assert candidate("haystack", "haystackhaystackhaystackhaystackhaystackhaystack") == -1
	assert candidate("aaa", "aaa") == 0
def test_check():
	check(strStr)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string,string-matching
# Metadata Coverage: 100
