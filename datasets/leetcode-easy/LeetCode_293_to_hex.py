def to_hex(num: int) -> str:
    """
    Given an integer num, return a string representing its hexadecimal representation. For negative integers, two’s complement method is used.
    All the letters in the answer string should be lowercase characters, and there should not be any leading zeros in the answer except for the zero itself.
    Note: You are not allowed to use any built-in library method to directly solve this problem.
 
    Example 1:
    Input: num = 26
    Output: "1a"
    Example 2:
    Input: num = -1
    Output: "ffffffff"

 
    Constraints:

    -231 <= num <= 231 - 1

    """
    ### Canonical solution below ###
    if num == 0:
        return '0'
    hex_str = ''
    hex_digits = '0123456789abcdef'
    n = num & 0xffffffff
    while n:
        hex_str = hex_digits[n & 0xf] + hex_str
        n >>= 4
    return hex_str




### Unit tests below ###
def check(candidate):
	assert candidate(16000) == "3e80"
	assert candidate(231-1) == "e6"
	assert candidate(1) == "1"
	assert candidate(1024) == "400"
	assert candidate(10) == "a"
	assert candidate(256) == "100"
	assert candidate(2**32-2) == "fffffffe"
	assert candidate(-500) == "fffffe0c"
	assert candidate(16) == "10"
	assert candidate(0) == "0"
	assert candidate(2 ** 31) == "80000000"
	assert candidate(255) == "ff"
	assert candidate(2**31-1) == "7fffffff"
	assert candidate(2 ** 31 - 1) == "7fffffff"
	assert candidate(-1024) == "fffffc00"
	assert candidate(-2**31-1) == "7fffffff"
	assert candidate(2**32-1) == "ffffffff"
	assert candidate(500) == "1f4"
	assert candidate(-1) == "ffffffff"
	assert candidate(123456) == "1e240"
	assert candidate(-2**31) == "80000000"
	assert candidate(26) == "1a"
	assert candidate(-255) == "ffffff01"
	assert candidate(11) == 'b'
	assert candidate(-10) == "fffffff6"
	assert candidate(15) == "f"
	assert candidate(-2147483648) == '80000000'
	assert candidate(100) == "64"
	assert candidate(-123456) == "fffe1dc0"
def test_check():
	check(to_hex)
# Metadata Difficulty: Easy
# Metadata Topics: math,bit-manipulation
# Metadata Coverage: 100
