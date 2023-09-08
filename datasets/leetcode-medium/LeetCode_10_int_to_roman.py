def int_to_roman(num: int) -> str:
    """
    Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

    Symbol       Value
    I             1
    V             5
    X             10
    L             50
    C             100
    D             500
    M             1000
    For example, 2 is written as II in Roman numeral, just two one's added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
    Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

    I can be placed before V (5) and X (10) to make 4 and 9. 
    X can be placed before L (50) and C (100) to make 40 and 90. 
    C can be placed before D (500) and M (1000) to make 400 and 900.

    Given an integer, convert it to a roman numeral.
 
    Example 1:

    Input: num = 3
    Output: "III"
    Explanation: 3 is represented as 3 ones.

    Example 2:

    Input: num = 58
    Output: "LVIII"
    Explanation: L = 50, V = 5, III = 3.

    Example 3:

    Input: num = 1994
    Output: "MCMXCIV"
    Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

 
    Constraints:

    1 <= num <= 3999

    """
    ### Canonical solution below ###
    romans = [
        (1000, "M"), (900, "CM"), (500, "D"),
        (400, "CD"), (100, "C"), (90, "XC"),
        (50, "L"), (40, "XL"), (10, "X"),
        (9, "IX"), (5, "V"), (4, "IV"), (1, "I")
    ]
    roman = ""
    for value, symbol in romans:
        while num >= value:
            roman += symbol
            num -= value
    return roman




### Unit tests below ###
def check(candidate):
	assert candidate(9) == "IX"
	assert candidate(1900) == "MCM"
	assert candidate(20) == "XX"
	assert candidate(1954) == "MCMLIV"
	assert candidate(1980) == "MCMLXXX"
	assert candidate(37) == "XXXVII"
	assert candidate(1800) == "MDCCC"
	assert candidate(1999) == "MCMXCIX"
	assert candidate(400) == "CD"
	assert candidate(80) == "LXXX"
	assert candidate(900) == "CM"
	assert candidate(10) == "X"
	assert candidate(58) == "LVIII"
	assert candidate(196) == "CXCVI"
	assert candidate(500) == "D"
	assert candidate(5) == "V"
	assert candidate(1994) == "MCMXCIV"
	assert candidate(30) == "XXX"
	assert candidate(1500) == "MD"
	assert candidate(38) == "XXXVIII"
	assert candidate(18) == "XVIII"
	assert candidate(1985) == "MCMLXXXV"
	assert candidate(48) == "XLVIII"
	assert candidate(1666) == "MDCLXVI"
	assert candidate(190) == "CXC"
	assert candidate(90) == "XC"
	assert candidate(300) == "CCC"
	assert candidate(4) == "IV"
	assert candidate(1000000) == "M" * 1000
	assert candidate(200) == "CC"
	assert candidate(27) == "XXVII"
	assert candidate(2999) == "MMCMXCIX"
	assert candidate(2000) == "MM"
	assert candidate(1366) == "MCCCLXVI"
	assert candidate(2008) == "MMVIII"
	assert candidate(1977) == "MCMLXXVII"
	assert candidate(13) == "XIII"
	assert candidate(150) == "CL"
	assert candidate(3999) == "MMMCMXCIX"
	assert candidate(2) == "II"
	assert candidate(8) == "VIII"
	assert candidate(19) == "XIX"
	assert candidate(2021) == "MMXXI"
	assert candidate(1000) == "M"
	assert candidate(28) == "XXVIII"
	assert candidate(40) == "XL"
	assert candidate(3) == "III"
	assert candidate(1700) == "MDCC"
	assert candidate(1984) == "MCMLXXXIV"
	assert candidate(3000) == "MMM"
	assert candidate(1) == "I"
	assert candidate(68) == "LXVIII"
	assert candidate(50) == "L"
	assert candidate(100) == "C"
def test_check():
	check(int_to_roman)
# Metadata Difficulty: Medium
# Metadata Topics: hash-table,math,string
# Metadata Coverage: 100
