def freqAlphabets(s: str) -> str:
    """
    You are given a string s formed by digits and '#'. We want to map s to English lowercase characters as follows:

    Characters ('a' to 'i') are represented by ('1' to '9') respectively.
    Characters ('j' to 'z') are represented by ('10#' to '26#') respectively.

    Return the string formed after mapping.
    The test cases are generated so that a unique mapping will always exist.
 
    Example 1:

    Input: s = "10#11#12"
    Output: "jkab"
    Explanation: "j" -> "10#" , "k" -> "11#" , "a" -> "1" , "b" -> "2".

    Example 2:

    Input: s = "1326#"
    Output: "acz"

 
    Constraints:

    1 <= s.length <= 1000
    s consists of digits and the '#' letter.
    s will be a valid string such that mapping is always possible.

    """
    ### Canonical solution below ###
    result = []
    i = 0
    while i < len(s):
        if i + 2 < len(s) and s[i + 2] == '#':
            result.append(chr(ord('a') + int(s[i:i + 2]) - 1))
            i += 3
        else:
            result.append(chr(ord('a') + int(s[i]) - 1))
            i += 1
    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate('26#') == 'z'
	assert candidate('') == ''
	assert candidate(
    "10#11#12") == 'jkab', 'Should map 10#->j, 11#->k, 12->a, 2->b'
	assert candidate(
    '10#11#12') == 'jkab', 'Note that numbers are 1-indexed in the problem description.'
	assert candidate('25#') == 'y'
	assert candidate('12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#') == 'abcdefghijklmnopqrstuvwxyz'
	assert candidate(
    '10#11#12') == 'jkab', 'Should handle two-letter codes with # in the middle.'
	assert candidate(
    '1326#') == 'acz', 'Note that #1 corresponds to a, #2 corresponds to b, and so on.'
	assert candidate(
    '12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#') == 'abcdefghijklmnopqrstuvwxyz'
	assert candidate('10#11#12') == 'jkab'
	assert candidate('10#26#') == 'jz'
	assert candidate('123456') == 'abcdef'
	assert candidate('25#26#') == 'yz'
	assert candidate('1') == 'a'
	assert candidate('1326#') == 'acz'
	assert candidate(
    '10#11#12') == 'jkab'
def test_check():
	check(freqAlphabets)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
