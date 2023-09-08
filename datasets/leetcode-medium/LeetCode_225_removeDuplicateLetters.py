def removeDuplicateLetters(s: str) -> str:
    """
    Given a string s, remove duplicate letters so that every letter appears once and only once. You must make sure your result is the smallest in lexicographical order among all possible results.
 
    Example 1:

    Input: s = "bcabc"
    Output: "abc"

    Example 2:

    Input: s = "cbacdcbc"
    Output: "acdb"

 
    Constraints:

    1 <= s.length <= 104
    s consists of lowercase English letters.

 
    Note: This question is the same as 1081: https://leetcode.com/problems/smallest-subsequence-of-distinct-characters/
    """
    ### Canonical solution below ###
    count = [0] * 256
    visited = [False] * 256
    st = []

    for ch in s:
        count[ord(ch)] += 1

    for ch in s:
        count[ord(ch)] -= 1
        if visited[ord(ch)]:
            continue
        while st and ch < st[-1] and count[ord(st[-1])] > 0:
            visited[ord(st.pop())] = False
        st.append(ch)
        visited[ord(ch)] = True

    return "".join(st)




### Unit tests below ###
def check(candidate):
	assert candidate(
    "aaaaaaaabbbbbbbbbbccccccccccddddddddddeeeeeeeeeeffffffffffgggggggggghhhhhhhhhhiiiiiiiiiijjjjjjjjjkkkkkkkkkkllllllllllmmmmmmmmmmnnnnnnnnnnooooooooppppppppppqqqqqqqqqqrrrrrrrrrrssssssssssttttttttttuuuuuuuuuuvvvvvvvvvvwwwwwwwwwxxxxxxyyyyyyyzzzzzzzzz") == "abcdefghijklmnopqrstuvwxyz"
	assert candidate("aba") == "ab"
	assert candidate("accddeeeffgg") == "acdefg"
	assert candidate("abcdefghijklmnop") == "abcdefghijklmnop"
	assert candidate("abcabcccc") == "abc"
	assert candidate("cbacdb") == "acdb"
	assert candidate("ababababababababab") == "ab"
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == "a"
	assert candidate("bbcaaccaabcbbacacbacbbcca") == "abc"
	assert candidate("") == ""
	assert candidate("abbbbbbbbbbbbbbbbbbbbbbbbbbbb") == "ab"
	assert candidate("aaaaaa") == "a"
	assert candidate("zxyzyx") == "xyz"
	assert candidate("abcabcabcabc") == "abc"
	assert candidate("aabbb") == "ab"
	assert candidate("aabbbaa") == "ab"
	assert candidate("abcbabcbb") == "abc"
	assert candidate("abaacba") == "abc"
	assert candidate("ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc") == "c"
	assert candidate("cabaabccbc") == "abc"
	assert candidate("azazazazaz") == "az"
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab") == "ab"
	assert candidate("aabbaac") == "abc"
	assert candidate("baabcabcab") == "abc"
	assert candidate("cbacdcbc") == "acdb"
	assert candidate("zzzzzzzzzzzzzzyf") == "zyf"
	assert candidate("abb") == "ab"
	assert candidate("aabbccddeeffgghhiijjkkllmmnnooppqqrrssttuuvvwwxxyyzz") == "abcdefghijklmnopqrstuvwxyz"
	assert candidate("abc") == "abc"
	assert candidate(
    "abacbabab") == "abc"
	assert candidate("bbaacbabc") == "abc"
	assert candidate("aabbbaaa") == "ab"
	assert candidate("aaaaaaaaaaaaaaaaaaaaaa") == "a"
	assert candidate("bcabc") == "abc"
	assert candidate("abbba") == "ab"
	assert candidate("aaaaaaaaaa") == "a"
	assert candidate("aaaaaaaaabbbbbbbbbbb") == "ab"
	assert candidate("a") == "a"
	assert candidate("aaaaaaaaaaaaaaaaaaaaaaaaaa") == "a"
	assert candidate("aabbbbbbbbbbbbbbbbbbbbbbbbbbbbbb") == "ab"
	assert candidate(
    "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab") == "ab"
	assert candidate("aeeabbaaae") == "abe"
	assert candidate("abbbbbbbbb") == "ab"
def test_check():
	check(removeDuplicateLetters)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack,greedy,monotonic-stack
# Metadata Coverage: 100
