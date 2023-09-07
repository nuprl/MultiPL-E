def min_deletions(s: str) -> int:
    """
    A string s is called good if there are no two different characters in s that have the same frequency.
    Given a string s, return the minimum number of characters you need to delete to make s good.
    The frequency of a character in a string is the number of times it appears in the string. For example, in the string "aab", the frequency of 'a' is 2, while the frequency of 'b' is 1.
 
    Example 1:

    Input: s = "aab"
    Output: 0
    Explanation: s is already good.

    Example 2:

    Input: s = "aaabbbcc"
    Output: 2
    Explanation: You can delete two 'b's resulting in the good string "aaabcc".
    Another way it to delete one 'b' and one 'c' resulting in the good string "aaabbc".
    Example 3:

    Input: s = "ceabaacb"
    Output: 2
    Explanation: You can delete both 'c's resulting in the good string "eabaab".
    Note that we only care about characters that are still in the string at the end (i.e. frequency of 0 is ignored).

 
    Constraints:

    1 <= s.length <= 105
    s contains only lowercase English letters.

    """
    ### Canonical solution below ###
    a_count, deletions = 0, 0
    for c in s:
        if c == 'a':
            a_count += 1
        else:
            if a_count > 0:
                a_count -= 1
            else:
                deletions += 1
    return deletions




### Unit tests below ###
def check(candidate):
	assert candidate('aaaaaabaaa') == 0
	assert candidate(('aabb')) == 0
	assert candidate('baabab') == 1
	assert candidate('bbbaaabbb') == 3
	assert candidate('aabababbababababababaa') == 0
	assert candidate(('aab')) == 0
	assert candidate('bbbbbb') == 6
	assert candidate('baaaaab') == 1
	assert candidate('aaabbb') == 0
	assert candidate('aaa') == 0
	assert candidate(('aabc')) == 0
	assert candidate('aaababbababbbaaa') == 1
	assert candidate('aabbbabaab') == 1
	assert candidate(('ab')) == 0
	assert candidate('baaabba') == 1
	assert candidate('aaaabbbb') == 0
	assert candidate('aaaaa') == 0
	assert candidate('aababbaaababab') == 0
	assert candidate('aab') == 0
	assert candidate('abaabbbaab') == 1
	assert candidate('aaababbbb') == 1
	assert candidate(('aabaa')) == 0
	assert candidate('ababba') == 1
	assert candidate(('ceabaacb')) == 2
	assert candidate('bbbbbaaaaaabb') == 5
	assert candidate(('aabacb')) == 0
	assert candidate('abab') == 0
	assert candidate('aaaabba') == 0
	assert candidate('aabbaa') == 0
	assert candidate(('aabccc')) == 2
	assert candidate('abcabcabc') == 3
	assert candidate('aababb') == 0
	assert candidate('aaaaabbaababaaaa') == 0
	assert candidate('aabb') == 0
	assert candidate(('abacababacab')) == 0
	assert candidate('baaaba') == 1
	assert candidate('aaaabb') == 0
	assert candidate('bbbbbaaaaaaabb') == 5
	assert candidate('bbaaabbb') == 2
	assert candidate(('aabcc')) == 1
	assert candidate('abaa') == 0
	assert candidate('abaaa') == 0
	assert candidate(('abab')) == 0
	assert candidate('baaabab') == 1
	assert candidate(('a')) == 0
	assert candidate('aaaaaa') == 0
	assert candidate('aabaabb') == 0
	assert candidate('baaaababbb') == 1
	assert candidate(('bababa')) == 1
def test_check():
	check(min_deletions)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,greedy,sorting
# Metadata Coverage: 100
