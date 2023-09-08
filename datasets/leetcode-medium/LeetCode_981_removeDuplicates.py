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
        if stack and stack[-1][0] == c:
            stack[-1][1] += 1
            if stack[-1][1] == k:
                stack.pop()
        else:
            stack.append([c, 1])
    return ''.join(c * n for c, n in stack)




### Unit tests below ###
def check(candidate):
	assert candidate("aaaabbbbccccdddd", 4) == ""
	assert candidate("aaaabbbbccccddddeeeeffff", 4) == ""
	assert candidate("abbaca", 2) == "ca"
	assert candidate(
    "deeedbbcccbdaa", 3) == "aa", "Wrong answer for 'deeedbbcccbdaa'"
	assert candidate(
    "deeedbbcccbdaa", 3) == "aa", "Should return 'aa'"
	assert candidate(
    "pbbcggttciiippooaais", 2) == "ps", "Should be 'ps', since only the first 2 'b' and 2 't' are removed, leaving 'pbcgctciippooaais'."
	assert candidate("aabbaa", 2) == ""
	assert candidate("aabbccddeeffgg", 3) == "aabbccddeeffgg"
	assert candidate(
    "deeedbbcccbdaa", 3) == "aa", "Should be 'aa', since the first 3 'd' will be removed, leaving 'eedbbcccbdaa'."
	assert candidate(
    "pbbcggttciiippooaais", 2) == "ps", "Should return 'ps'"
	assert candidate("pbbcggttciiippooaais", 2) == "ps"
	assert candidate("yfttttfbbbbnnnnffbgffffgbbbbgssssgthyyyy", 4) == "ybth"
	assert candidate("deeedbbcccbdaa", 3) == "aa", "Should return 'aa'"
	assert candidate("pbbcggttciiippooaais", 2) == "ps", "Should return 'ps'"
	assert candidate(
    "deeedbbcccbdaa", 3) == "aa", "deeedbbcccbdaa -> deeedbdaa -> deeda -> a"
	assert candidate("aabbccddeeff", 2) == ""
	assert candidate(
    "deeedbbcccbdaa", 3) == "aa", "Should remove 3 duplicate characters."
	assert candidate(
    "pbbcggttciiippooaais", 2) == "ps", "Should remove 2 duplicate characters."
	assert candidate("aabbcc", 2) == ""
def test_check():
	check(removeDuplicates)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack
# Metadata Coverage: 100
