def kSimilarity(s1: str, s2: str) -> int:
    """
    Strings s1 and s2 are k-similar (for some non-negative integer k) if we can swap the positions of two letters in s1 exactly k times so that the resulting string equals s2.
    Given two anagrams s1 and s2, return the smallest k for which s1 and s2 are k-similar.
 
    Example 1:

    Input: s1 = "ab", s2 = "ba"
    Output: 1
    Explanation: The two string are 1-similar because we can use one swap to change s1 to s2: "ab" --> "ba".

    Example 2:

    Input: s1 = "abc", s2 = "bca"
    Output: 2
    Explanation: The two strings are 2-similar because we can use two swaps to change s1 to s2: "abc" --> "bac" --> "bca".

 
    Constraints:

    1 <= s1.length <= 20
    s2.length == s1.length
    s1 and s2 contain only lowercase letters from the set {'a', 'b', 'c', 'd', 'e', 'f'}.
    s2 is an anagram of s1.

    """
    ### Canonical solution below ###
    k = 0
    temp = list(s1)

    for i in range(len(temp)):
        if temp[i] != s2[i]:
            j = i + 1
            while temp[j] != s2[i] or s2[j] == temp[j]:
                j += 1
            temp[i], temp[j] = temp[j], temp[i]
            k += 1

    return k




### Unit tests below ###
def check(candidate):
	assert candidate("abcabcabc", "abcabcacb") == 1
	assert candidate("abcde", "edcba") == 2
	assert candidate("aabbccdd", "ddccbbaa") == 4
	assert candidate("abcabcabc", "abcabccab") == 2
	assert candidate("abcabcabc", "abcabccba") == 1
	assert candidate("abcdef", "fedcba") == 3
	assert candidate("ab", "ba") == 1
	assert candidate("abcde", "abced") == 1
	assert candidate("abcabcabc", "abccbaacb") == 2
	assert candidate("abcd", "dcba") == 2
	assert candidate("abcabcabc", "cbaabcabc") == 1
	assert candidate("abcdefabcdef", "fedcbafedcba") == 6
	assert candidate("abc", "acb") == 1
	assert candidate("abc", "bca") == 2
	assert candidate("empty", "empty") == 0
	assert candidate("abcde", "abcde") == 0
	assert candidate("abcabcabc", "abcabcabc") == 0
	assert candidate("abcdef", "abcdef") == 0
	assert candidate("abc", "cab") == 2
	assert candidate(
    "qwertyuioplkjhgfdsazxcvbnmqwerty", "qwertyuioplkjhgfdsazxcvbnmqwerty"
) == 0
	assert candidate(
    "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv",
    "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv",
) == 0
	assert candidate("abcdef", "acbdef") == 1
	assert candidate("abcabcabc", "abccbaabc") == 1
	assert candidate("a", "a") == 0
def test_check():
	check(kSimilarity)
# Metadata Difficulty: Hard
# Metadata Topics: string,breadth-first-search
# Metadata Coverage: 100
