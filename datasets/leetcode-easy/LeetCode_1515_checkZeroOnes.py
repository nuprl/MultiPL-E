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
    longest_zero = longest_one = current_zero = current_one = 0

    for c in s:
        if c == '0':
            current_zero += 1
            longest_zero = max(longest_zero, current_zero)
            current_one = 0
        else:
            current_one += 1
            longest_one = max(longest_one, current_one)
            current_zero = 0

    return longest_one > longest_zero




### Unit tests below ###
def check(candidate):
	assert candidate("001") == False
	assert candidate("1000011101") == False
	assert candidate("110001") == False
	assert candidate("111000001") == False
	assert candidate("11010001011110011000001101000110101") == False
	assert candidate("100110011001") == False
	assert candidate("1101") == True
	assert candidate("11000") == False
	assert candidate("10001") == False
	assert candidate("10000100010001") == False
	assert candidate("1001") == False
	assert candidate("100001000100") == False
	assert candidate("1110001") == False
	assert candidate("000") == False
	assert candidate("1101000100001") == False
	assert candidate("1001100100") == False
	assert candidate("110") == True
	assert candidate("1110") == True
	assert candidate("1101000") == False
	assert candidate("10000100010001000") == False
	assert candidate("111001") == True
	assert candidate("1110000") == False
	assert candidate("10010") == False
	assert candidate("11011") == True
	assert candidate("1000010001000") == False
	assert candidate("1000001") == False
	assert candidate("110100010") == False
	assert candidate("1000010001001") == False
	assert candidate("100100010") == False
	assert candidate("1000100010") == False
	assert candidate("11") == True
	assert candidate("1100110011") == False
	assert candidate("100001") == False
	assert candidate("100000") == False
	assert candidate("111100") == True
	assert candidate("1000010001000100010") == False
	assert candidate("100001000100010") == False
	assert candidate("1010") == False
	assert candidate("111000") == False
	assert candidate("1011101") == True
	assert candidate("1111") == True
	assert candidate("00001111") == False
	assert candidate("01") == False
	assert candidate("101000100011") == False
	assert candidate("0000111") == False
	assert candidate("111000110") == False
	assert candidate("1010101") == False
	assert candidate("1110001101") == False
	assert candidate("00000000") == False
	assert candidate("1100011") == False
	assert candidate("1010001") == False
	assert candidate("10000") == False
	assert candidate("1000110001") == False
	assert candidate("10011") == False
	assert candidate("101010") == False
	assert candidate("010") == False
	assert candidate("000000") == False
	assert candidate("11100") == True
	assert candidate("0000") == False
	assert candidate("101110100001") == False
	assert candidate("10111111111") == True
	assert candidate("1000010001000100") == False
	assert candidate("1000001111") == False
	assert candidate("101010101") == False
	assert candidate("1111000") == True
	assert candidate("000001") == False
	assert candidate("0") == False
	assert candidate("111111") == True
	assert candidate("100") == False
	assert candidate("1011100000") == False
	assert candidate("100001000100010001") == False
	assert candidate("0010101011") == False
	assert candidate("100001010") == False
	assert candidate("10111101") == True
	assert candidate("10000000") == False
	assert candidate("00") == False
	assert candidate("010101") == False
	assert candidate("100100") == False
	assert candidate("11101101") == True
	assert candidate("10000100010") == False
	assert candidate("1000111") == False
	assert candidate("10101") == False
	assert candidate("111") == True
	assert candidate("0001") == False
	assert candidate("0000000000") == False
	assert candidate("11111") == True
	assert candidate("1") == True
	assert candidate("111110") == True
	assert candidate("1010000") == False
	assert candidate("1000") == False
def test_check():
	check(checkZeroOnes)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
