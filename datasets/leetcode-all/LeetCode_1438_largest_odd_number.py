def largest_odd_number(num: str) -> str:
    """
    You are given a string num, representing a large integer. Return the largest-valued odd integer (as a string) that is a non-empty substring of num, or an empty string "" if no odd integer exists.
    A substring is a contiguous sequence of characters within a string.
 
    Example 1:

    Input: num = "52"
    Output: "5"
    Explanation: The only non-empty substrings are "5", "2", and "52". "5" is the only odd number.

    Example 2:

    Input: num = "4206"
    Output: ""
    Explanation: There are no odd numbers in "4206".

    Example 3:

    Input: num = "35427"
    Output: "35427"
    Explanation: "35427" is already an odd number.

 
    Constraints:

    1 <= num.length <= 105
    num only consists of digits and does not contain any leading zeros.

    """
    ### Canonical solution below ###
    for i in range(len(num) - 1, -1, -1):
        if int(num[i]) % 2 != 0:
            return num[:i + 1]
    return ""




### Unit tests below ###
def check(candidate):
	assert candidate(
    "1999999999999999999999999999999999999999999999999999") == "1999999999999999999999999999999999999999999999999999"
	assert candidate("35427") == "35427"
	assert candidate(
    "9999999999999999999999999999999999999") == "9999999999999999999999999999999999999"
	assert candidate("9876543210") == "987654321"
	assert candidate("24680") == ""
	assert candidate("11111") == "11111"
	assert candidate("66666") == ""
	assert candidate("222") == ""
	assert candidate("345678") == "34567"
	assert candidate("88888") == ""
	assert candidate("2") == ""
	assert candidate("44444") == ""
	assert candidate("13579") == "13579"
	assert candidate("33333") == "33333"
	assert candidate("52") == "5"
	assert candidate("202020") == ""
	assert candidate("12") == "1"
	assert candidate("77777") == "77777"
	assert candidate("99999") == "99999"
	assert candidate("1") == "1"
	assert candidate("123456789") == "123456789"
	assert candidate("22222") == ""
	assert candidate("4206") == ""
	assert candidate("55555") == "55555"
def test_check():
	check(largest_odd_number)
# Metadata Difficulty: Easy
# Metadata Topics: math,string,greedy
# Metadata Coverage: 100
