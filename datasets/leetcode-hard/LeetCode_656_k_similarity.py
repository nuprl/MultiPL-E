def k_similarity(s1: str, s2: str) -> int:
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
    a, b = list(s1), list(s2)
    for i in range(len(a)):
        if a[i] != b[i]:
            for j in range(i + 1, len(b)):
                if a[i] == b[j] and a[j] != b[j]:
                    a[i], a[j] = a[j], a[i]
                    k += 1
                    break
    return k




### Unit tests below ###
def check(candidate):
	assert candidate("This is a test", "This is a test") == 0
	assert candidate(
    "abcdef", "badefc") == 2, "Two letters from s1 should be swapped to get s2"
	assert candidate("abcdefghijklm", "abcdefghijklm") == 0
	assert candidate(
    "word order matters", "word order matters"
) == 0
	assert candidate("identical", "identical") == 0
	assert candidate("only words", "only words") == 0
	assert candidate(
    "abab", "baba") == 2, "Two letters from s1 should be swapped to get s2"
	assert candidate("same", "same") == 0
	assert candidate(
    "This is a test", "This is a test"
) == 0, "The strings are the same. No letters should be swapped."
	assert candidate("12345", "12345") == 0
	assert candidate("f1.0", "f1.0") == 0
	assert candidate(
    "abcde", "bacde") == 1, "Two letters of s1 should be swapped to get s2"
	assert candidate("same length", "same length") == 0
	assert candidate("only words", "no numbers") == 2
	assert candidate(
    "This is not a common phrase.", "This is not a common phrase."
) == 0
	assert candidate(
    "ab", "ba") == 1, "Two letters of s1 should be swapped to get s2"
	assert candidate("single word", "single word") == 0
	assert candidate("abcdef", "abcdef") == 0
	assert candidate(
    "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijlmnopqrstuvwxyz",
    "1234567890ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijlmnopqrstuvwxyz",
) == 0
	assert candidate("abcd", "abcd") == 0
	assert candidate(
    "same chars repeated", "same chars repeated"
) == 0
	assert candidate("big word", "big word") == 0
	assert candidate("a2b3c4d5", "a2b3c4d5") == 0
	assert candidate("one word", "one word") == 0
	assert candidate("1ab234cd", "1ab234dc") == 1
def test_check():
	check(k_similarity)
# Metadata Difficulty: Hard
# Metadata Topics: string,breadth-first-search
# Metadata Coverage: 100
