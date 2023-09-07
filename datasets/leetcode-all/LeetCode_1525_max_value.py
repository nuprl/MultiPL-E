def max_value(n: str, x: int) -> str:
    """
    You are given a very large integer n, represented as a string,​​​​​​ and an integer digit x. The digits in n and the digit x are in the inclusive range [1, 9], and n may represent a negative number.
    You want to maximize n's numerical value by inserting x anywhere in the decimal representation of n​​​​​​. You cannot insert x to the left of the negative sign.

    For example, if n = 73 and x = 6, it would be best to insert it between 7 and 3, making n = 763.
    If n = -55 and x = 2, it would be best to insert it before the first 5, making n = -255.

    Return a string representing the maximum value of n​​​​​​ after the insertion.
 
    Example 1:

    Input: n = "99", x = 9
    Output: "999"
    Explanation: The result is the same regardless of where you insert 9.

    Example 2:

    Input: n = "-13", x = 2
    Output: "-123"
    Explanation: You can make n one of {-213, -123, -132}, and the largest of those three is -123.

 
    Constraints:

    1 <= n.length <= 105
    1 <= x <= 9
    The digits in n​​​ are in the range [1, 9].
    n is a valid representation of an integer.
    In the case of a negative n,​​​​​​ it will begin with '-'.

    """
    ### Canonical solution below ###
    is_negative = n[0] == '-'
    pos = 1 if is_negative else 0

    while pos < len(n):
        if (is_negative and int(n[pos]) > x) or (not is_negative and int(n[pos]) < x):
            break
        pos += 1

    return n[:pos] + str(x) + n[pos:]




### Unit tests below ###
def check(candidate):
	assert candidate("4444", 5) == "54444"
	assert candidate("-4567", 3) == "-34567"
	assert candidate("3333", 4) == "43333"
	assert candidate("6666", 7) == "76666"
	assert candidate("8888", 9) == "98888"
	assert candidate("0000", 1) == "10000"
	assert candidate("0000", 9) == "90000"
	assert candidate("2222", 3) == "32222"
	assert candidate("7777", 8) == "87777"
	assert candidate("-1234", 5) == "-12345"
	assert candidate("5555", 6) == "65555"
	assert candidate("1111", 2) == "21111"
def test_check():
	check(max_value)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy
# Metadata Coverage: 100
