def checkZeroOnes(s: str) -> bool:
    """
    Given a binary string s, return true if the longest contiguous segment of 1's is strictly longer than the longest contiguous segment of 0's in s, or return false otherwise.

    For example, in s = "110100010" the longest continuous segment of 1s has length 2, and the longest continuous segment of 0s has length 3.

    Note that if there are no 0's, then the longest continuous segment of 0's is considered to have a length 0. The same applies if there is no 1's.
 
    Example 1:

    Input: s = "1101"
    Output: true
    Explanation:
    The longest contiguous segment of 1s has length 2: "1101"
    The longest contiguous segment of 0s has length 1: "1101"
    The segment of 1s is longer, so return true.

    Example 2:

    Input: s = "111000"
    Output: false
    Explanation:
    The longest contiguous segment of 1s has length 3: "111000"
    The longest contiguous segment of 0s has length 3: "111000"
    The segment of 1s is not longer, so return false.

    Example 3:

    Input: s = "110100010"
    Output: false
    Explanation:
    The longest contiguous segment of 1s has length 2: "110100010"
    The longest contiguous segment of 0s has length 3: "110100010"
    The segment of 1s is not longer, so return false.

 
    Constraints:

    1 <= s.length <= 100
    s[i] is either '0' or '1'.

    """
    ### Canonical solution below ###
    max_ones, max_zeros, current_ones, current_zeros = 0, 0, 0, 0
    for c in s:
        if c == '1':
            current_ones += 1
            current_zeros = 0
        else:
            current_zeros += 1
            current_ones = 0
        max_ones = max(max_ones, current_ones)
        max_zeros = max(max_zeros, current_zeros)
    return max_ones > max_zeros




### Unit tests below ###
def check(candidate):
	assert candidate("0") == False
	assert candidate("111000") == False
	assert candidate("11111111111111111111000000000000") == True
	assert candidate("111111") == True
	assert candidate("1111111111111111111111111111111111000000000000000000000000000") == True
	assert candidate("1111111111111111111111111111111111000000000000000000000000000000") == True
	assert candidate("111111111111") == True
	assert candidate("110001") == False
	assert candidate("1010101010101010101") == False
	assert candidate("1111100000") == False
	assert candidate("11010001010101010000000000") == False
	assert candidate("00000") == False
	assert candidate("11101") == True
	assert candidate("1101") == True
	assert candidate("110100010") == False
	assert candidate("10101010101010101010101010101010101010101010101010101") == False
	assert candidate("11111111111111111111111111111111110000000000000000000000000000") == True
	assert candidate("111111111111111111111111111111110") == True
	assert candidate("111100000") == False
	assert candidate("0000000") == False
	assert candidate("101010") == False
	assert candidate("11111000001111100000") == False
	assert candidate("1010101010101010101010101010101010101010101010101010") == False
	assert candidate("1010101010101010101010101010101") == False
	assert candidate("111") == True
	assert candidate("10101010101010101010101010101010") == False
	assert candidate("11110000") == False
	assert candidate("11010001010101010101010101010101010101010101010101010") == False
	assert candidate("11111") == True
	assert candidate("1") == True
	assert candidate("1010101010") == False
	assert candidate("1010") == False
	assert candidate("111111111111111111") == True
def test_check():
	check(checkZeroOnes)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
