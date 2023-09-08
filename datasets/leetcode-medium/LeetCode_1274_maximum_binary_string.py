def maximum_binary_string(binary: str) -> str:
    """
    You are given a binary string binary consisting of only 0's or 1's. You can apply each of the following operations any number of times:

    Operation 1: If the number contains the substring "00", you can replace it with "10".


    For example, "00010" -> "10010"


    Operation 2: If the number contains the substring "10", you can replace it with "01".

    For example, "00010" -> "00001"



    Return the maximum binary string you can obtain after any number of operations. Binary string x is greater than binary string y if x's decimal representation is greater than y's decimal representation.
 
    Example 1:

    Input: binary = "000110"
    Output: "111011"
    Explanation: A valid transformation sequence can be:
    "000110" -> "000101" 
    "000101" -> "100101" 
    "100101" -> "110101" 
    "110101" -> "110011" 
    "110011" -> "111011"

    Example 2:

    Input: binary = "01"
    Output: "01"
    Explanation: "01" cannot be transformed any further.

 
    Constraints:

    1 <= binary.length <= 105
    binary consist of '0' and '1'.

    """
    ### Canonical solution below ###
    zero_count = binary.count('0')

    if zero_count <= 1:
        return binary

    one_count = len(binary) - zero_count

    result = "1" * one_count + "0" * (zero_count - 1) + "1####1"
    return result[:len(binary)]




### Unit tests below ###
def check(candidate):
	assert candidate("1111") == "1111"
	assert candidate("1101") == "1101"
	assert candidate("001") == "101"
	assert candidate("1111111111") == "1111111111"
	assert candidate("1010") == "1101"
	assert candidate("01") == "01"
	assert candidate("11011") == "11011"
def test_check():
	check(maximum_binary_string)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy
# Metadata Coverage: 100
