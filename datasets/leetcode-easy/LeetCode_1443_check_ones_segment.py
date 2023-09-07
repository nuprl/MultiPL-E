def check_ones_segment(s: str) -> bool:
    """
    Given a binary string s ​​​​​without leading zeros, return true​​​ if s contains at most one contiguous segment of ones. Otherwise, return false.
 
    Example 1:

    Input: s = "1001"
    Output: false
    Explanation: The ones do not form a contiguous segment.

    Example 2:

    Input: s = "110"
    Output: true
 
    Constraints:

    1 <= s.length <= 100
    s[i]​​​​ is either '0' or '1'.
    s[0] is '1'.

    """
    ### Canonical solution below ###
    count = 0
    for i in range(len(s)):
        if s[i] == '1':
            if i > 0 and s[i - 1] == '0':
                count += 1
    return count <= 1




### Unit tests below ###
def check(candidate):
	assert candidate("10000") == True
	assert candidate("10101") == False
	assert candidate("11111") == True
	assert candidate("10000100001") == False
	assert candidate("00000") == True
	assert candidate(
    "1001100010000111000110010001000111101010001010001100010100110101010111110101010111110000000010111110100111110011010100000110011100111101111101111101011000100001111011000101100011000110001") == False
	assert candidate("0") == True
	assert candidate("1111100000") == True
	assert candidate("10") == True
	assert candidate("1") == True
	assert candidate("100000111110000011111") == False
	assert candidate("01") == True
	assert candidate("00001") == True
	assert candidate("0101") == False
	assert candidate("11000110001") == False
def test_check():
	check(check_ones_segment)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
