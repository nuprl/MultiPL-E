def addBinary(a: str, b: str) -> str:
    """
    Given two binary strings a and b, return their sum as a binary string.
 
    Example 1:
    Input: a = "11", b = "1"
    Output: "100"
    Example 2:
    Input: a = "1010", b = "1011"
    Output: "10101"

 
    Constraints:

    1 <= a.length, b.length <= 104
    a and b consist only of '0' or '1' characters.
    Each string does not contain leading zeros except for the zero itself.

    """
    ### Canonical solution below ###
    result, carry, i, j = "", 0, len(a) - 1, len(b) - 1
    while i >= 0 or j >= 0 or carry:
        if i >= 0:
            carry += int(a[i])
            i -= 1
        if j >= 0:
            carry += int(b[j])
            j -= 1
        result = str(carry % 2) + result
        carry //= 2
    return result




### Unit tests below ###
def check(candidate):
	assert candidate("0", "0") == "0"
	assert candidate("1", "10") == "11"
	assert candidate("11", "1") == "100"
	assert candidate("1111", "1111") == "11110"
	assert candidate("1", "11") == "100"
	assert candidate("1101101", "1010110") == "11000011"
	assert candidate("0", "1") == "1"
	assert candidate("1", "1") == "10"
	assert candidate("1", "0") == "1"
	assert candidate("1111111111", "1111111111") == "11111111110"
	assert candidate("111111111", "111111111") == "1111111110"
	assert candidate("1111111111", "1") == "10000000000"
	assert candidate("1010101010", "1010101010") == "10101010100"
	assert candidate("1010", "1011") == "10101"
	assert candidate("11111", "1") == "100000"
	assert candidate("10101010101", "10101010101") == "101010101010"
	assert candidate("101010", "101010") == "1010100"
	assert candidate("1001", "1001") == "10010"
	assert candidate("1", "11111") == "100000"
	assert candidate("1", "1111111111") == "10000000000"
	assert candidate("10", "1") == "11"
def test_check():
	check(addBinary)
# Metadata Difficulty: Easy
# Metadata Topics: math,string,bit-manipulation,simulation
# Metadata Coverage: 100
