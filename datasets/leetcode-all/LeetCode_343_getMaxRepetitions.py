def getMaxRepetitions(s1: str, n1: int, s2: str, n2: int) -> int:
    """
    We define str = [s, n] as the string str which consists of the string s concatenated n times.

    For example, str == ["abc", 3] =="abcabcabc".

    We define that string s1 can be obtained from string s2 if we can remove some characters from s2 such that it becomes s1.

    For example, s1 = "abc" can be obtained from s2 = "abdbec" based on our definition by removing the bolded underlined characters.

    You are given two strings s1 and s2 and two integers n1 and n2. You have the two strings str1 = [s1, n1] and str2 = [s2, n2].
    Return the maximum integer m such that str = [str2, m] can be obtained from str1.
 
    Example 1:
    Input: s1 = "acb", n1 = 4, s2 = "ab", n2 = 2
    Output: 2
    Example 2:
    Input: s1 = "acb", n1 = 1, s2 = "acb", n2 = 1
    Output: 1

 
    Constraints:

    1 <= s1.length, s2.length <= 100
    s1 and s2 consist of lowercase English letters.
    1 <= n1, n2 <= 106

    """
    ### Canonical solution below ###
    count1, count2, i, j = 0, 0, 0, 0
    while count1 < n1:
        if s1[i] == s2[j]:
            j += 1
            if j == len(s2):
                j = 0
                count2 += 1
        i += 1
        if i == len(s1):
            i = 0
            count1 += 1
    return count2 // n2




### Unit tests below ###
def check(candidate):
	assert candidate("abcdabcdabcdabcdabcdabcd", 1, "abcdabcd", 3) == 1
	assert candidate("abcd", 1, "ab", 2) == 0
	assert candidate("abcd", 1, "abcd", 1) == 1
	assert candidate("abc", 4, "ab", 2) == 2
	assert candidate("a", 0, "a", 1) == 0
	assert candidate("abcdabcd", 1, "abcd", 1) == 2
	assert candidate("abc", 3, "abcabc", 3) == 0
	assert candidate("abcabcabc", 5, "abc", 3) == 5
	assert candidate("abcdefg", 6, "abc", 1) == 6
	assert candidate("abcdefg", 5, "abc", 1) == 5
	assert candidate("abcdefg", 3, "abc", 1) == 3
	assert candidate("abcabc", 2, "abc", 3) == 1
	assert candidate("abcd", 1, "a", 2) == 0
	assert candidate("abca", 2, "abc", 2) == 1
	assert candidate("abc", 3, "abc", 3) == 1
	assert candidate("a", 100, "aa", 50) == 1
	assert candidate("abcdefg", 2, "abc", 1) == 2
	assert candidate("abcdefg", 4, "abc", 1) == 4
	assert candidate("abcabc", 2, "abc", 2) == 2
	assert candidate("bba", 1, "ab", 2) == 0
	assert candidate("abc", 100, "a", 1) == 100
	assert candidate("abcd", 1, "ab", 3) == 0
	assert candidate("abcdefg", 1, "abcdefg", 1) == 1
	assert candidate("abcdefg", 3, "abcdef", 3) == 1
	assert candidate("ab", 2, "a", 1) == 2
	assert candidate("abcabcabcabcabcabcabcabcabc", 1, "abcabcabcabcabcabcabcabcabc", 1) == 1
	assert candidate("abcabcabcabc", 4, "abcabc", 2) == 4
	assert candidate("bba", 1, "ab", 10) == 0
	assert candidate("abcd", 1, "a", 4) == 0
	assert candidate("abcd", 1, "a", 3) == 0
	assert candidate("abc", 1, "abc", 1) == 1
	assert candidate("abcabcabc", 1, "abc", 3) == 1
	assert candidate("abcabcab", 3, "abc", 2) == 3
	assert candidate("abcdabcdabcdabcdabcd", 1, "abcd", 5) == 1
	assert candidate("abc", 5, "ab", 1) == 5
	assert candidate("abc", 3, "abcabcabc", 1) == 1
	assert candidate("abcdefg", 1, "abc", 1) == 1
	assert candidate("b", 99, "aa", 1) == 0
	assert candidate("abc", 3, "abc", 1) == 3
	assert candidate("abcabcabcabcabcabc", 1, "abcabcabc", 2) == 1
	assert candidate("a", 1, "a", 1) == 1
	assert candidate("abcabc", 1, "abc", 1) == 2
	assert candidate("abcdefg", 7, "abc", 1) == 7
	assert candidate("s1", 1, "s2", 1) == 0
	assert candidate("abcd", 1, "ab", 4) == 0
	assert candidate("bba", 1, "ab", 1) == 0
def test_check():
	check(getMaxRepetitions)
# Metadata Difficulty: Hard
# Metadata Topics: string,dynamic-programming
# Metadata Coverage: 100
