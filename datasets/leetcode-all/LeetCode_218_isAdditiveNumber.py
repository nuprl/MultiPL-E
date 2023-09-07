def isAdditiveNumber(num: str) -> bool:
    """
    An additive number is a string whose digits can form an additive sequence.
    A valid additive sequence should contain at least three numbers. Except for the first two numbers, each subsequent number in the sequence must be the sum of the preceding two.
    Given a string containing only digits, return true if it is an additive number or false otherwise.
    Note: Numbers in the additive sequence cannot have leading zeros, so sequence 1, 2, 03 or 1, 02, 3 is invalid.
 
    Example 1:

    Input: "112358"
    Output: true
    Explanation: 
    The digits can form an additive sequence: 1, 1, 2, 3, 5, 8. 
    1 + 1 = 2, 1 + 2 = 3, 2 + 3 = 5, 3 + 5 = 8

    Example 2:

    Input: "199100199"
    Output: true
    Explanation: 
    The additive sequence is: 1, 99, 100, 199. 
    1 + 99 = 100, 99 + 100 = 199

 
    Constraints:

    1 <= num.length <= 35
    num consists only of digits.

 
    Follow up: How would you handle overflow for very large input integers?
    """
    ### Canonical solution below ###
    def add(num1, num2):
        carry, result = 0, []
        i, j = len(num1) - 1, len(num2) - 1
        while i >= 0 or j >= 0 or carry > 0:
            n1 = int(num1[i]) if i >= 0 else 0
            n2 = int(num2[j]) if j >= 0 else 0
            _sum = n1 + n2 + carry
            carry = _sum // 10
            result.append(str(_sum % 10))
            i, j = i - 1, j - 1
        return ''.join(result[::-1])

    def check(num1, num2, remaining):
        if (len(num1) > 1 and num1[0] == '0') or (len(num2) > 1 and num2[0] == '0'):
            return False
        _sum = add(num1, num2)
        if remaining == _sum:
            return True
        if not remaining.startswith(_sum):
            return False
        return check(num2, _sum, remaining[len(_sum):])
    for i in range(1, len(num) // 2 + 1):
        for j in range(1, (len(num) - i) // 2 + 1):
            if check(num[:i], num[i:i+j], num[i+j:]):
                return True
    return False




### Unit tests below ###
def check(candidate):
	assert candidate("10102358132") == False
	assert candidate("189100199") == False
	assert candidate("023581321") == False
	assert candidate("12358") == True
	assert candidate("0012345") == False
	assert candidate("01") == False
	assert candidate("11235813") == True
	assert candidate("19891001") == False
	assert candidate("112358000") == False
	assert candidate("11233") == False
	assert candidate("1234567890") == False
	assert candidate("10000") == False
	assert candidate("102030405") == False
	assert candidate("000") == True
	assert candidate("123") == True
	assert candidate("112358132134559") == False
	assert candidate("112358") == True
	assert candidate("10192233") == False
	assert candidate("1020304") == False
	assert candidate("12312312345") == False
	assert candidate("10203") == False
	assert candidate("012358") == False
	assert candidate("102358132") == False
	assert candidate("10204") == False
	assert candidate("1230015") == False
	assert candidate("12358130") == False
	assert candidate("00123") == False
	assert candidate("123581") == False
	assert candidate("1235813") == True
	assert candidate("1123581321") == True
	assert candidate("1123580") == False
	assert candidate("1234567891011") == False
	assert candidate("01234") == False
	assert candidate("123580123") == False
	assert candidate("011") == True
	assert candidate("112358001") == False
	assert candidate("0011") == False
	assert candidate("1234567891") == False
	assert candidate("123456") == False
	assert candidate("1991001991234567") == False
	assert candidate("101") == True
	assert candidate("11235") == True
	assert candidate("1234567") == False
	assert candidate("0") == False
	assert candidate("00") == False
	assert candidate("123581321") == True
	assert candidate("12345") == False
	assert candidate("199100199001") == False
	assert candidate("123456789101112131415161718") == False
	assert candidate("12345610") == False
	assert candidate("1023") == False
	assert candidate("199100199") == True
	assert candidate("12345678910") == False
	assert candidate("00011") == False
	assert candidate("23") == False
	assert candidate("123456789") == False
	assert candidate("345") == False
	assert candidate("111") == False
	assert candidate("101023") == False
	assert candidate("0000123456") == False
	assert candidate("199199100") == False
	assert candidate("102358132134") == False
	assert candidate("101010") == False
	assert candidate("01235813") == False
def test_check():
	check(isAdditiveNumber)
# Metadata Difficulty: Medium
# Metadata Topics: string,backtracking
# Metadata Coverage: 100
