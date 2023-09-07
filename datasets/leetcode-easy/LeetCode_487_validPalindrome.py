def validPalindrome(s: str) -> bool:
    """
    Given a string s, return true if the s can be palindrome after deleting at most one character from it.
 
    Example 1:

    Input: s = "aba"
    Output: true

    Example 2:

    Input: s = "abca"
    Output: true
    Explanation: You could delete the character 'c'.

    Example 3:

    Input: s = "abc"
    Output: false

 
    Constraints:

    1 <= s.length <= 105
    s consists of lowercase English letters.

    """
    ### Canonical solution below ###
    i, j = 0, len(s) - 1
    while i < j:
        if s[i] != s[j]:
            temp1, temp2 = i + 1, j
            while temp1 < temp2 and s[temp1] == s[temp2]:
                temp1 += 1
                temp2 -= 1
            if temp1 >= temp2:
                return True

            temp1, temp2 = i, j - 1
            while temp1 < temp2 and s[temp1] == s[temp2]:
                temp1 += 1
                temp2 -= 1
            if temp1 >= temp2:
                return True

            return False
        i += 1
        j -= 1
    return True




### Unit tests below ###
def check(candidate):
	assert candidate("abcddcdbaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaa") == False
	assert candidate("abcddcdbaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaa") == False
	assert candidate("aaa") == True
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdabcd") == False
	assert candidate("abcdedcbaa") == True
	assert candidate("abcddcba") == True
	assert candidate("abcdedcbaaaaaaa") == False
	assert candidate(
    "abcddcbafghfedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaa") == False
	assert candidate("abcddcbaa") == True
	assert candidate("abcdedcba") == True
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdefgfedcba") == True
	assert candidate("abcddcdbaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaa") == False
	assert candidate("aba") == True
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate(
    "jfdsajfodusafovfjjafjoovjdoajaaaafjfosfjoaajfosjojoosjojosaofjojdsfsjdoaojfaosfjooajfaojjfojfosajfosjoooajfosjojoosjojosaofjojdsfsjdoaojfaosfjooajfaojjfojfosajfosjoo") == False
	assert candidate(
    "kqdyztifytqjnuzftbwdfhykgsiozkgbeuytxoqsjvysbmsvifgmfuqgbwioytfdbsywsjgdlvyskfqgptxrywfyztjkygfyxqhfz") == False
	assert candidate("a") == True
	assert candidate("abcdedcbaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcddcdba") == True
	assert candidate("abcba") == True
	assert candidate(
    "abcddcdbaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abc") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcddcdbaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abca") == True
	assert candidate("aa") == True
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcddcbaaaaaa") == False
	assert candidate("abcddcdbaaaaaaaaaaaaaaaaa") == False
	assert candidate(
    "jfdsajfodusafovfjjafjoovjdoajaaaafjfosfjoaajfosjojoosjojosaofjojdsfsjdoaojfaosfjooajfaojjfojfosajfosjoooajfosjojoosjojosaofjojdsfsjdoaojfaosfjooajfaojjfojfosajfosjoooajfosjojoosjojosaofjojdsfsjdoaojfaosfjooajfaojjfojfosajfosjoo") == False
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdefedcba") == True
	assert candidate("aaaa") == True
	assert candidate("abcdedcbaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") == False
	assert candidate("abcdefqfedcba") == True
	assert candidate("abcdedcbaaaaaaaa") == False
def test_check():
	check(validPalindrome)
# Metadata Difficulty: Easy
# Metadata Topics: two-pointers,string,greedy
# Metadata Coverage: 100
