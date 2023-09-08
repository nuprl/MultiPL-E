def addStrings(num1: str, num2: str) -> str:
    """
    Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.
    You must solve the problem without using any built-in library for handling large integers (such as BigInteger). You must also not convert the inputs to integers directly.
 
    Example 1:

    Input: num1 = "11", num2 = "123"
    Output: "134"

    Example 2:

    Input: num1 = "456", num2 = "77"
    Output: "533"

    Example 3:

    Input: num1 = "0", num2 = "0"
    Output: "0"

 
    Constraints:

    1 <= num1.length, num2.length <= 104
    num1 and num2 consist of only digits.
    num1 and num2 don't have any leading zeros except for the zero itself.

    """
    ### Canonical solution below ###
    i, j, carry, result = len(num1) - 1, len(num2) - 1, 0, []

    while i >= 0 or j >= 0 or carry:
        sum = carry

        if i >= 0:
            sum += int(num1[i])
            i -= 1
        if j >= 0:
            sum += int(num2[j])
            j -= 1

        carry = sum // 10
        result.append(str(sum % 10))

    return ''.join(result[::-1])




### Unit tests below ###
def check(candidate):
	assert candidate("123456789", "987654321") == "1111111110"
	assert candidate("999", "1") == "1000"
	assert candidate("100", "900") == "1000"
	assert candidate("12345", "98765") == "111110"
	assert candidate("0", "0") == "0"
	assert candidate("11", "123") == "134"
	assert candidate("1", "999999999") == "1000000000"
	assert candidate("10000", "90000") == "100000"
	assert candidate("10000000", "90000000") == "100000000"
	assert candidate("9000000", "1000000") == "10000000"
	assert candidate("99999", "1") == "100000"
	assert candidate("456", "77") == "533"
	assert candidate("1000000", "9000000") == "10000000"
	assert candidate("90000000", "10000000") == "100000000"
	assert candidate("900", "100") == "1000"
	assert candidate("9", "1") == "10"
	assert candidate("1", "9") == "10"
	assert candidate("90000", "10000") == "100000"
	assert candidate("54321", "12345") == "66666"
def test_check():
	check(addStrings)
# Metadata Difficulty: Easy
# Metadata Topics: math,string,simulation
# Metadata Coverage: 100
