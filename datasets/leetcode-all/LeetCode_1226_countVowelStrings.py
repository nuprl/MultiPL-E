def countVowelStrings(n: int) -> int:
    """
    Given an integer n, return the number of strings of length n that consist only of vowels (a, e, i, o, u) and are lexicographically sorted.
    A string s is lexicographically sorted if for all valid i, s[i] is the same as or comes before s[i+1] in the alphabet.
 
    Example 1:

    Input: n = 1
    Output: 5
    Explanation: The 5 sorted strings that consist of vowels only are ["a","e","i","o","u"].

    Example 2:

    Input: n = 2
    Output: 15
    Explanation: The 15 sorted strings that consist of vowels only are
    ["aa","ae","ai","ao","au","ee","ei","eo","eu","ii","io","iu","oo","ou","uu"].
    Note that "ea" is not a valid string since 'e' comes after 'a' in the alphabet.

    Example 3:

    Input: n = 33
    Output: 66045

 
    Constraints:

    1 <= n <= 50 

    """
    ### Canonical solution below ###
    dp = [1, 1, 1, 1, 1]
    for i in range(2, n + 1):
        for j in range(3, -1, -1):
            dp[j] = dp[j] + dp[j + 1]
    return sum(dp)




### Unit tests below ###
def check(candidate):
	assert candidate(8) == 495
	assert candidate(15) == 3876
	assert candidate(34) == 73815
	assert candidate(30) == 46376
	assert candidate(3) == 35
	assert candidate(21) == 12650
	assert candidate(10) == 1001
	assert candidate(38) == 111930
	assert candidate(7) == 330
	assert candidate(24) == 20475
	assert candidate(12) == 1820
	assert candidate(6) == 210
	assert candidate(35) == 82251
	assert candidate(5) == 126
	assert candidate(23) == 17550
	assert candidate(31) == 52360
	assert candidate(27) == 31465
	assert candidate(33) == 66045
	assert candidate(2) == 15
	assert candidate(4) == 70
	assert candidate(19) == 8855
	assert candidate(1) == 5
	assert candidate(16) == 4845
	assert candidate(20) == 10626
	assert candidate(39) == 123410
	assert candidate(14) == 3060
	assert candidate(18) == 7315
	assert candidate(26) == 27405
	assert candidate(17) == 5985
	assert candidate(9) == 715
	assert candidate(22) == 14950
	assert candidate(11) == 1365
	assert candidate(25) == 23751
	assert candidate(29) == 40920
	assert candidate(36) == 91390
	assert candidate(28) == 35960
	assert candidate(37) == 101270
	assert candidate(13) == 2380
	assert candidate(32) == 58905
	assert candidate(40) == 135751
def test_check():
	check(countVowelStrings)
# Metadata Difficulty: Medium
# Metadata Topics: math,dynamic-programming,combinatorics
# Metadata Coverage: 100
