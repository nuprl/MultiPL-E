def has_all_codes(s: str, k: int) -> bool:
    """
    Given a binary string s and an integer k, return true if every binary code of length k is a substring of s. Otherwise, return false.
 
    Example 1:

    Input: s = "00110110", k = 2
    Output: true
    Explanation: The binary codes of length 2 are "00", "01", "10" and "11". They can be all found as substrings at indices 0, 1, 3 and 2 respectively.

    Example 2:

    Input: s = "0110", k = 1
    Output: true
    Explanation: The binary codes of length 1 are "0" and "1", it is clear that both exist as a substring. 

    Example 3:

    Input: s = "0110", k = 2
    Output: false
    Explanation: The binary code "00" is of length 2 and does not exist in the array.

 
    Constraints:

    1 <= s.length <= 5 * 105
    s[i] is either '0' or '1'.
    1 <= k <= 20

    """
    ### Canonical solution below ###
    need = 1 << k
    got = set()

    for i in range(len(s) - k + 1):
        got.add(s[i:i + k])

    return len(got) == need




### Unit tests below ###
def check(candidate):
	assert candidate("01010101", 1) == True
	assert candidate("abcabcabcabc", 5) == False
	assert candidate("1010101010", 5) == False
	assert candidate("9876543210", 11) == False
	assert candidate("1100110011", 4) == False
	assert candidate("11111", 2) == False
	assert candidate("1010101010101010101010101", 1) == True
	assert candidate("00000000000000000000000000000000000000000000000", 16) == False
	assert candidate("aaabbbcccddd", 2) == False
	assert candidate("1100110011", 2) == True
	assert candidate("aaabbbcccddd", 4) == False
	assert candidate("1234567890", 11) == False
	assert candidate("00000000000000000000000000000000000000000000000", 17) == False
	assert candidate("00010001", 3) == False
	assert candidate("1010101010", 1) == True
	assert candidate("01010101", 3) == False
	assert candidate("10010", 3) == False
def test_check():
	check(has_all_codes)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,string,bit-manipulation,rolling-hash,hash-function
# Metadata Coverage: 100
