def removeDuplicates(s: str, k: int) -> str:
    """
    You are given a string s and an integer k, a k duplicate removal consists of choosing k adjacent and equal letters from s and removing them, causing the left and the right side of the deleted substring to concatenate together.
    We repeatedly make k duplicate removals on s until we no longer can.
    Return the final string after all such duplicate removals have been made. It is guaranteed that the answer is unique.
 
    Example 1:

    Input: s = "abcd", k = 2
    Output: "abcd"
    Explanation: There's nothing to delete.
    Example 2:

    Input: s = "deeedbbcccbdaa", k = 3
    Output: "aa"
    Explanation: 
    First delete "eee" and "ccc", get "ddbbbdaa"
    Then delete "bbb", get "dddaa"
    Finally delete "ddd", get "aa"
    Example 3:

    Input: s = "pbbcggttciiippooaais", k = 2
    Output: "ps"

 
    Constraints:

    1 <= s.length <= 105
    2 <= k <= 104
    s only contains lowercase English letters.

    """
    ### Canonical solution below ###
    stack = []
    for c in s:
        if not stack or stack[-1][0] != c:
            stack.append((c, 1))
        elif stack[-1][1] + 1 != k:
            stack[-1] = (c, stack[-1][1] + 1)
        else:
            stack.pop()
    return ''.join(c * count for c, count in stack)




### Unit tests below ###
def check(candidate):
	assert candidate("aaabbbccc", 1) == "aaabbbccc"
	assert candidate("abcd", 1) == "abcd"
	assert candidate("aabbaabb", 3) == "aabbaabb"
	assert candidate("aabbaabb", 2) == ""
	assert candidate("abbbaca", 1) == "abbbaca"
	assert candidate("abcabcabc", 3) == "abcabcabc"
	assert candidate("deeedbbcccbdaa", 1) == "deeedbbcccbdaa"
	assert candidate("deeedbbcccbdaa", 3) == "aa"
	assert candidate("aaa", 3) == ""
	assert candidate(
    "deeedbbcccbdaa", 1) == "deeedbbcccbdaa"
	assert candidate("abcd", 4) == "abcd"
	assert candidate(
    "aaabbbccc", 1) == "aaabbbccc"
	assert candidate("aabbaabb", 1) == "aabbaabb"
	assert candidate("aaaaaa", 5) == "a"
	assert candidate("abcd", 2) == "abcd"
	assert candidate("aaaaaaaaaaaaaa", 1) == "aaaaaaaaaaaaaa"
	assert candidate("aaaaaaaaaa", 10) == ""
	assert candidate("aaaaaaaaaa", 5) == ""
	assert candidate("aaa", 2) == "a"
	assert candidate(
    "abcd", 3) == "abcd"
	assert candidate(
    "abcd", 1) == "abcd"
	assert candidate("aaaaaaaaaa", 1) == "aaaaaaaaaa"
	assert candidate("aabbaabb", 5) == "aabbaabb"
	assert candidate("abcabcabc", 2) == "abcabcabc"
	assert candidate("pbbcggttciiippooaais", 2) == "ps"
	assert candidate("abcabcabc", 1) == "abcabcabc"
	assert candidate("aaabbbccc", 3) == ""
	assert candidate("aabbaabb", 4) == "aabbaabb"
	assert candidate("aabbccddeeff", 2) == ""
	assert candidate("abcd", 3) == "abcd"
	assert candidate("aaaaaaaaaa", 3) == "a"
	assert candidate("aaaaaa", 6) == ""
	assert candidate("aaaaaaaaaa", 2) == ""
def test_check():
	check(removeDuplicates)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
