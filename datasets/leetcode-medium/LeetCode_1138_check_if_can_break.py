def check_if_can_break(s1: str, s2: str) -> bool:
    """
    Given two strings: s1 and s2 with the same size, check if some permutation of string s1 can break some permutation of string s2 or vice-versa. In other words s2 can break s1 or vice-versa.
    A string x can break string y (both of size n) if x[i] >= y[i] (in alphabetical order) for all i between 0 and n-1.
 
    Example 1:

    Input: s1 = "abc", s2 = "xya"
    Output: true
    Explanation: "ayx" is a permutation of s2="xya" which can break to string "abc" which is a permutation of s1="abc".

    Example 2:

    Input: s1 = "abe", s2 = "acd"
    Output: false 
    Explanation: All permutations for s1="abe" are: "abe", "aeb", "bae", "bea", "eab" and "eba" and all permutation for s2="acd" are: "acd", "adc", "cad", "cda", "dac" and "dca". However, there is not any permutation from s1 which can break some permutation from s2 and vice-versa.

    Example 3:

    Input: s1 = "leetcodee", s2 = "interview"
    Output: true

 
    Constraints:

    s1.length == n
    s2.length == n
    1 <= n <= 10^5
    All strings consist of lowercase English letters.

    """
    ### Canonical solution below ###
    s1 = sorted(s1)
    s2 = sorted(s2)

    can_break_1 = can_break_2 = True
    for c1, c2 in zip(s1, s2):
        if c1 < c2:
            can_break_1 = False
        if c2 < c1:
            can_break_2 = False

    return can_break_1 or can_break_2




### Unit tests below ###
def check(candidate):
	assert candidate("abcd", "efgh") == True
	assert candidate("abcd", "dcba") == True
	assert candidate("zxcvbnmasdfghjklqwertyuiop", "poiuytrewqlkjhgfdsamnbvcxz") == True
	assert candidate("asdfghjkl", "lkjhgfdsa") == True
	assert candidate("1111", "2222") == True
	assert candidate("abcdefghij", "jihgfedcba") == True
	assert candidate("c", "abc") == True
	assert candidate("abc", "def") == True
	assert candidate("pqrstuvwxy", "yxwvutsrqp") == True
	assert candidate("zzzzzzzzzzzz", "aaaaaaaaaaaa") == True
	assert candidate("xya", "abc") == True
	assert candidate("lkjhgfdsaz", "zxcvbnm") == False
	assert candidate("abd", "cba") == True
	assert candidate("ab", "cd") == True
	assert candidate("2134", "1234") == True
	assert candidate("1234567890", "0987654321") == True
	assert candidate("xzy", "abc") == True
	assert candidate("abc", "aab") == True
	assert candidate("poiuytrewqlkjhgfdsa", "qazwsxedcrfvtgbz") == False
	assert candidate("mnbvcxz", "zxcvbnm") == True
	assert candidate("1234", "4321") == True
	assert candidate("bbb", "aaa") == True
	assert candidate("abcdefghijklmn", "defghijklmn") == True
	assert candidate("abc", "abcd") == True
	assert candidate("mnbvcxzasdfghjkl", "lkjhgfdsazxcvbnm") == True
	assert candidate("2222", "1111") == True
	assert candidate("abcdef", "abcde") == True
	assert candidate("abcde", "edcba") == True
	assert candidate("zxcvbnm", "zxc") == True
	assert candidate("ghi", "abc") == True
	assert candidate("111111", "222222") == True
	assert candidate("xyz", "abc") == True
	assert candidate("poiuytrewq", "qwertyuiop") == True
	assert candidate("12345", "abcde") == True
	assert candidate("leetcodee", "interview") == True
	assert candidate("qwe", "zxc") == False
	assert candidate("a", "abc") == True
	assert candidate("poiuytrewqlkjh", "zxcvbnmasdfghjkl") == True
	assert candidate("qwerty", "ytrewq") == True
	assert candidate("abe", "acd") == False
	assert candidate("aa", "ab") == True
	assert candidate("123", "321") == True
	assert candidate("abcd", "cdba") == True
	assert candidate("ab", "abcd") == True
	assert candidate("poiuytrewqlkjhgfdsa", "mnbvcxzasdfghjkl") == False
	assert candidate("zxcvbnm", "qwertyu") == False
	assert candidate("asd", "123") == True
	assert candidate("zxcvbnm", "lkjhgfdsaz") == False
def test_check():
	check(check_if_can_break)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy,sorting
# Metadata Coverage: 100
