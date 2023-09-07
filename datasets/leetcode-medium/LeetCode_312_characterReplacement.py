def characterReplacement(s: str, k: int) -> int:
    """
    You are given a string s and an integer k. You can choose any character of the string and change it to any other uppercase English character. You can perform this operation at most k times.
    Return the length of the longest substring containing the same letter you can get after performing the above operations.
 
    Example 1:

    Input: s = "ABAB", k = 2
    Output: 4
    Explanation: Replace the two 'A's with two 'B's or vice versa.

    Example 2:

    Input: s = "AABABBA", k = 1
    Output: 4
    Explanation: Replace the one 'A' in the middle with 'B' and form "AABBBBA".
    The substring "BBBB" has the longest repeating letters, which is 4.
    There may exists other ways to achive this answer too.
 
    Constraints:

    1 <= s.length <= 105
    s consists of only uppercase English letters.
    0 <= k <= s.length

    """
    ### Canonical solution below ###
    n = len(s)
    left = 0
    right = 0
    maxFreq = 0
    result = 0
    freq = [0] * 26

    for right in range(n):
        freq[ord(s[right]) - ord('A')] += 1
        maxFreq = max(maxFreq, freq[ord(s[right]) - ord('A')])

        if right - left + 1 - maxFreq > k:
            freq[ord(s[left]) - ord('A')] -= 1
            left += 1

        result = max(result, right - left + 1)

    return result




### Unit tests below ###
def check(candidate):
	assert candidate("A" * 50000 + "B" * 50000, 50000) == 100000
	assert candidate("A" * 105, 100) == 105
	assert candidate("AAAA", 0) == 4
	assert candidate("AB" + "A" * 50000, 50000) == 50002
	assert candidate("Z" * 100000, 50000) == 100000
	assert candidate("B" * 50000 + "A" * 50000, 50000) == 100000
	assert candidate("BABAABB", 1) == 4
	assert candidate("ABAB", 2) == 4
	assert candidate("BBBAAA", 3) == 6
	assert candidate("BABAABB", 2) == 5
	assert candidate("AAAAA", 5) == 5
	assert candidate("BBBAAA", 2) == 5
	assert candidate("AB" * 52 + "A", 50) == 101
	assert candidate("AAAABBBBCCC", 0) == 4
	assert candidate("BBBAAA", 0) == 3
	assert candidate("BBBAAA", 1) == 4
	assert candidate("AB" * 52 + "A", 52) == 105
	assert candidate("BABAABB", 4) == 7
	assert candidate("ABCDEF", 2) == 3
	assert candidate("AABABBA", 1) == 4
	assert candidate("ABCDE", 0) == 1
	assert candidate("A" * 105, 0) == 105
	assert candidate("AB" * 52 + "A", 51) == 103
	assert candidate("Z" * 50000 + "A" * 50000, 50000) == 100000
	assert candidate("ABCDEF", 1) == 2
	assert candidate("AB" * 52 + "A", 53) == 105
	assert candidate("Z" * 50000 + "A" * 50000, 49999) == 99999
def test_check():
	check(characterReplacement)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,sliding-window
# Metadata Coverage: 100
