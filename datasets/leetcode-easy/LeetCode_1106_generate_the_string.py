def generate_the_string(n: int) -> str:
    """
    Given an integer n, return a string with n characters such that each character in such string occurs an odd number of times.
    The returned string must contain only lowercase English letters. If there are multiples valid strings, return any of them.  
 
    Example 1:

    Input: n = 4
    Output: "pppz"
    Explanation: "pppz" is a valid string since the character 'p' occurs three times and the character 'z' occurs once. Note that there are many other valid strings such as "ohhh" and "love".

    Example 2:

    Input: n = 2
    Output: "xy"
    Explanation: "xy" is a valid string since the characters 'x' and 'y' occur once. Note that there are many other valid strings such as "ag" and "ur".

    Example 3:

    Input: n = 7
    Output: "holasss"

 
    Constraints:

    1 <= n <= 500

    """
    ### Canonical solution below ###
    if n % 2 == 0:
        return 'a' * (n - 1) + 'b'
    else:
        return 'a' * n




### Unit tests below ###
def check(candidate):
	assert candidate(20) == 'aaaaaaaaaaaaaaaaaaab'
	assert candidate(7) == 'aaaaaaa'
	assert candidate(24) == 'aaaaaaaaaaaaaaaaaaaaaaab'
	assert candidate(5) == 'aaaaa'
	assert candidate(11) == 'aaaaaaaaaaa'
	assert candidate(18) == 'aaaaaaaaaaaaaaaaab'
	assert candidate(19) == 'aaaaaaaaaaaaaaaaaaa'
	assert candidate(3) == 'aaa'
	assert candidate(1) == 'a'
	assert candidate(9) == 'aaaaaaaaa'
	assert candidate(10) == 'aaaaaaaaab'
	assert candidate(22) == 'aaaaaaaaaaaaaaaaaaaaab'
	assert candidate(16) == 'aaaaaaaaaaaaaaab'
	assert candidate(12) == 'aaaaaaaaaaab'
	assert candidate(13) == 'aaaaaaaaaaaaa'
	assert candidate(17) == 'aaaaaaaaaaaaaaaaa'
	assert candidate(25) == 'aaaaaaaaaaaaaaaaaaaaaaaaa'
	assert candidate(23) == 'aaaaaaaaaaaaaaaaaaaaaaa'
	assert candidate(4) == 'aaab'
	assert candidate(8) == 'aaaaaaab'
	assert candidate(15) == 'aaaaaaaaaaaaaaa'
	assert candidate(2) == 'ab'
	assert candidate(26) == 'aaaaaaaaaaaaaaaaaaaaaaaaab'
	assert candidate(21) == 'aaaaaaaaaaaaaaaaaaaaa'
	assert candidate(14) == 'aaaaaaaaaaaaab'
	assert candidate(6) == 'aaaaab'
def test_check():
	check(generate_the_string)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
