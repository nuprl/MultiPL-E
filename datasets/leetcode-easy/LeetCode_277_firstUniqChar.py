def firstUniqChar(s: str) -> int:
    """
    Given a string s, find the first non-repeating character in it and return its index. If it does not exist, return -1.
 
    Example 1:
    Input: s = "leetcode"
    Output: 0
    Example 2:
    Input: s = "loveleetcode"
    Output: 2
    Example 3:
    Input: s = "aabb"
    Output: -1

 
    Constraints:

    1 <= s.length <= 105
    s consists of only lowercase English letters.

    """
    ### Canonical solution below ###
    char_count = {}
    for c in s:
        char_count[c] = char_count.get(c, 0) + 1
    for i in range(len(s)):
        if char_count[s[i]] == 1:
            return i
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate("bash") == 0
	assert candidate("firebase") == 0
	assert candidate("loveleetcode") == 2
	assert candidate("tomorrow") == 0
	assert candidate("facebook") == 0
	assert candidate("abcdea") == 1
	assert candidate("elixir") == 0
	assert candidate("perl") == 0
	assert candidate("abcdefghijklmnopqrstuvwxyz") == 0
	assert candidate("groovy") == 0
	assert candidate(
    "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz") == -1
	assert candidate("scala") == 0
	assert candidate("crystal") == 0
	assert candidate(
    "ecmascript") == 0
	assert candidate("numpy") == 0
	assert candidate("aaaaaaaaaaaaaaa") == -1
	assert candidate("aab") == 2
	assert candidate("leetcode") == 0
	assert candidate("matlab") == 0
	assert candidate("plantuml") == 0
	assert candidate("css") == 0
	assert candidate(
    "go") == 0
	assert candidate("tensorflow") == 0
	assert candidate("angular") == 1
	assert candidate("aaaaaaaaaaaaaabbbbbbbbbbb") == -1
	assert candidate("code") == 0
	assert candidate("java") == 0
	assert candidate("goland") == 0
	assert candidate(
    "c") == 0
	assert candidate("vue") == 0
	assert candidate(
    "lisp") == 0
	assert candidate(
    "matlab") == 0
	assert candidate("apple") == 0
	assert candidate("ruby") == 0
	assert candidate(
    "f") == 0
	assert candidate("postgresql") == 0
	assert candidate("rust") == 0
	assert candidate("html") == 0
	assert candidate("golang") == 1
	assert candidate("webstorm") == 0
	assert candidate(
    "rust") == 0
	assert candidate(
    "python") == 0
	assert candidate("reactjs") == 0
	assert candidate(
    "java") == 0
	assert candidate("bbccdd") == -1
	assert candidate("aabb") == -1
	assert candidate("swift") == 0
	assert candidate("mongodb") == 0
	assert candidate("kotlin") == 0
	assert candidate("go") == 0
	assert candidate(
    "html") == 0
	assert candidate("csharp") == 0
	assert candidate("pytorch") == 0
	assert candidate(
    "css") == 0
	assert candidate("nodejs") == 0
	assert candidate("thisisatest") == 1
	assert candidate("python") == 0
	assert candidate("svelte") == 0
	assert candidate("django") == 0
	assert candidate("git") == 0
	assert candidate("shell") == 0
	assert candidate("tommorow") == 0
	assert candidate(
    "ruby") == 0
	assert candidate("a") == 0
	assert candidate("json") == 0
	assert candidate("javascript") == 0
	assert candidate("c") == 0
	assert candidate("aws") == 0
def test_check():
	check(firstUniqChar)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,string,queue,counting
# Metadata Coverage: 100
