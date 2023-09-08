def fraction_to_decimal(numerator: int, denominator: int) -> str:
    """
    Given two integers representing the numerator and denominator of a fraction, return the fraction in string format.
    If the fractional part is repeating, enclose the repeating part in parentheses.
    If multiple answers are possible, return any of them.
    It is guaranteed that the length of the answer string is less than 104 for all the given inputs.
 
    Example 1:

    Input: numerator = 1, denominator = 2
    Output: "0.5"

    Example 2:

    Input: numerator = 2, denominator = 1
    Output: "2"

    Example 3:

    Input: numerator = 4, denominator = 333
    Output: "0.(012)"

 
    Constraints:

    -231 <= numerator, denominator <= 231 - 1
    denominator != 0

    """
    ### Canonical solution below ###
    if numerator == 0:
        return "0"
    res = []
    if (numerator > 0) ^ (denominator > 0):
        res.append("-")
    num = abs(numerator)
    den = abs(denominator)
    res.append(str(num // den))
    num %= den
    if num == 0:
        return "".join(res)
    res.append(".")
    map = {}
    while num:
        if num in map:
            res.insert(map[num], "(")
            res.append(")")
            break
        map[num] = len(res)
        num *= 10
        res.append(str(num // den))
        num %= den
    return "".join(res)




### Unit tests below ###
def check(candidate):
	assert candidate(0, -7) == "0"
	assert candidate(0, -1) == "0"
	assert candidate(20, -1) == "-20"
	assert candidate(1, 3) == "0.(3)"
	assert candidate(0, 1) == "0"
	assert candidate(-5, -1) == "5"
	assert candidate(6, 3) == "2"
	assert candidate(-1, 1) == "-1"
	assert candidate(-7, 9) == "-0.(7)"
	assert candidate(-10, -1) == "10"
	assert candidate(70, 10) == "7"
	assert candidate(5, 6) == "0.8(3)"
	assert candidate(1, 10000000000) == "0.0000000001"
	assert candidate(7, 3) == "2.(3)"
	assert candidate(6, -3) == "-2"
	assert candidate(3, -2) == "-1.5"
	assert candidate(0, -11) == "0"
	assert candidate(-1, 12) == "-0.08(3)"
	assert candidate(-1, -1) == "1"
	assert candidate(7, -3) == "-2.(3)"
	assert candidate(-5, -3) == "1.(6)"
	assert candidate(6, 1) == "6"
	assert candidate(3, -3) == "-1"
	assert candidate(1, 6) == "0.1(6)"
	assert candidate(2, 1) == "2"
	assert candidate(-22, 7) == "-3.(142857)"
	assert candidate(0, 10) == "0"
	assert candidate(-3, -3) == "1"
	assert candidate(1001, 7) == "143"
	assert candidate(0, -111) == "0"
	assert candidate(1, 100000000000) == "0.00000000001"
	assert candidate(5, -3) == "-1.(6)"
	assert candidate(4, 2) == "2"
	assert candidate(-21, -2) == "10.5"
	assert candidate(-20, 1) == "-20"
	assert candidate(-4, -1) == "4"
	assert candidate(-50, 8) == "-6.25"
	assert candidate(-8, -2) == "4"
	assert candidate(1, 1000000000000) == "0.000000000001"
	assert candidate(10, 2) == "5"
	assert candidate(7, 9) == "0.(7)"
	assert candidate(1, 7) == "0.(142857)"
	assert candidate(-5, 3) == "-1.(6)"
	assert candidate(-6, -4) == "1.5"
	assert candidate(-7, -3) == "2.(3)"
	assert candidate(1, 1000000000) == "0.000000001"
	assert candidate(1, -1) == "-1"
	assert candidate(22, -7) == "-3.(142857)"
	assert candidate(-3, 7) == "-0.(428571)"
	assert candidate(22, 7) == "3.(142857)"
	assert candidate(1, -3) == "-0.(3)"
	assert candidate(1, 20) == "0.05"
	assert candidate(21, 2) == "10.5"
	assert candidate(4, 333) == "0.(012)"
	assert candidate(1, 2) == "0.5"
	assert candidate(-20, -1) == "20"
	assert candidate(-4, 1) == "-4"
	assert candidate(1, 10000000000000) == "0.0000000000001"
	assert candidate(-1, -3) == "0.(3)"
	assert candidate(3, -1) == "-3"
	assert candidate(1, -2) == "-0.5"
	assert candidate(5, 3) == "1.(6)"
	assert candidate(23, 3) == "7.(6)"
	assert candidate(2, 7) == "0.(285714)"
	assert candidate(-1, 2) == "-0.5"
	assert candidate(3, 1) == "3"
	assert candidate(-1, 6) == "-0.1(6)"
	assert candidate(0, -99999999999999999) == "0"
	assert candidate(0, -2) == "0"
	assert candidate(89, 9) == "9.(8)"
	assert candidate(5, -1) == "-5"
	assert candidate(345, 11) == "31.(36)"
def test_check():
	check(fraction_to_decimal)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,math,string
# Metadata Coverage: 100
