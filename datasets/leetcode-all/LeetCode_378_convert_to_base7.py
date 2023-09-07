def convert_to_base7(num: int) -> str:
    """
    Given an integer num, return a string of its base 7 representation.
 
    Example 1:
    Input: num = 100
    Output: "202"
    Example 2:
    Input: num = -7
    Output: "-10"

 
    Constraints:

    -107 <= num <= 107

    """
    ### Canonical solution below ###
    if num == 0:
        return "0"
    result = ""
    negative = num < 0
    if negative:
        num *= -1
    while num > 0:
        result = str(num % 7) + result
        num //= 7
    return "-" + result if negative else result




### Unit tests below ###
def check(candidate):
	assert candidate(17) == "23"
	assert candidate(2) == "2"
	assert candidate(3) == "3"
	assert candidate(100) == "202"
	assert candidate(1) == "1"
	assert candidate(-4) == "-4"
	assert candidate(124) == "235"
	assert candidate(9) == "12"
	assert candidate(-13) == "-16"
	assert candidate(0) == "0"
	assert candidate(6) == "6"
	assert candidate(-14) == "-20"
	assert candidate(-8) == "-11"
	assert candidate(5) == "5"
	assert candidate(-9) == "-12"
	assert candidate(14) == "20"
	assert candidate(-11) == "-14"
	assert candidate(50) == "101"
	assert candidate(-1) == "-1"
	assert candidate(-5) == "-5"
	assert candidate(-12) == "-15"
	assert candidate(12) == "15"
	assert candidate(16) == "22"
	assert candidate(-3) == "-3"
	assert candidate(-49) == "-100"
	assert candidate(-107) == "-212"
	assert candidate(13) == "16"
	assert candidate(-7) == "-10"
	assert candidate(8) == "11"
	assert candidate(49) == "100"
	assert candidate(-100) == "-202"
	assert candidate(-2) == "-2"
	assert candidate(-50) == "-101"
	assert candidate(4) == "4"
	assert candidate(7) == "10"
	assert candidate(-10) == "-13"
	assert candidate(10) == "13"
	assert candidate(-6) == "-6"
	assert candidate(11) == "14"
	assert candidate(107) == "212"
	assert candidate(101) == "203"
def test_check():
	check(convert_to_base7)
# Metadata Difficulty: Easy
# Metadata Topics: math
# Metadata Coverage: 100
