def num_ways(s: str) -> int:
    """
    Given a binary string s, you can split s into 3 non-empty strings s1, s2, and s3 where s1 + s2 + s3 = s.
    Return the number of ways s can be split such that the number of ones is the same in s1, s2, and s3. Since the answer may be too large, return it modulo 109 + 7.
 
    Example 1:

    Input: s = "10101"
    Output: 4
    Explanation: There are four ways to split s in 3 parts where each part contain the same number of letters '1'.
    "1|010|1"
    "1|01|01"
    "10|10|1"
    "10|1|01"

    Example 2:

    Input: s = "1001"
    Output: 0

    Example 3:

    Input: s = "0000"
    Output: 3
    Explanation: There are three ways to split s in 3 parts.
    "0|0|00"
    "0|00|0"
    "00|0|0"

 
    Constraints:

    3 <= s.length <= 105
    s[i] is either '0' or '1'.

    """
    ### Canonical solution below ###
    number_of_ones = s.count('1')
    if number_of_ones % 3 != 0:
        return 0

    target = number_of_ones // 3
    if target == 0:
        n = len(s)
        return ((n - 1) * (n - 2) // 2) % 1000000007

    ones_so_far1, ones_so_far2 = 0, 0
    way1, way2 = 0, 0
    for c in s:
        if c == '1':
            ones_so_far1 += 1
            if ones_so_far1 == target:
                way1 += 1
                ones_so_far1 = 0

            ones_so_far2 += 1
            if ones_so_far2 == target * 2:
                way2 += 1
                ones_so_far2 = 0

    return (way1 * way2) % 1000000007




### Unit tests below ###
def check(candidate):
	assert candidate('1001') == 0
	assert candidate('0000') == 3
	assert candidate('1') == 0
	assert candidate('111111000000') == 3
	assert candidate('11110000') == 0
	assert candidate('1111100000') == 0
def test_check():
	check(num_ways)
# Metadata Difficulty: Medium
# Metadata Topics: math,string
# Metadata Coverage: 100
