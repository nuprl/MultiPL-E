def roman_to_int(s: str) -> int:
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
    For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.
    Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

    I can be placed before V (5) and X (10) to make 4 and 9. 
    X can be placed before L (50) and C (100) to make 40 and 90. 
    C can be placed before D (500) and M (1000) to make 400 and 900.

    Given a roman numeral, convert it to an integer.
 
    Example 1:

    Input: s = "III"
    Output: 3
    Explanation: III = 3.

    Example 2:

    Input: s = "LVIII"
    Output: 58
    Explanation: L = 50, V= 5, III = 3.

    Example 3:

    Input: s = "MCMXCIV"
    Output: 1994
    Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.

 
    Constraints:

    1 <= s.length <= 15
    s contains only the characters ('I', 'V', 'X', 'L', 'C', 'D', 'M').
    It is guaranteed that s is a valid roman numeral in the range [1, 3999].

    """
    ### Canonical solution below ###
    roman_values = {'I': 1, 'V': 5, 'X': 10, 'L': 50, 'C': 100, 'D': 500, 'M': 1000}
    total = 0
    prev_value = 0

    for c in s:
        current_value = roman_values[c]
        if current_value > prev_value:
            total += current_value - 2 * prev_value
        else:
            total += current_value
        prev_value = current_value

    return total




### Unit tests below ###
def check(candidate):
	assert candidate("MMMCMXCIX") == 3999
	assert candidate("C") == 100
	assert candidate("CCCIX") == 309
	assert candidate("M") == 1000
	assert candidate("MMMM") == 4000
	assert candidate("LI") == 51
	assert candidate("XCVIII") == 98
	assert candidate("MMMDCCI") == 3701
	assert candidate("D") == 500
	assert candidate("CD") == 400
	assert candidate("CCCXLVII") == 347
	assert candidate("MCMXCIV") == 1994
	assert candidate("LIX") == 59
	assert candidate("MI") == 1001
	assert candidate("CCC") == 300
	assert candidate("X") == 10
	assert candidate("MCDLXXVI") == 1476
	assert candidate("CLXI") == 161
	assert candidate("MMI") == 2001
	assert candidate("XXVII") == 27
	assert candidate("MCDXCVIII") == 1498
	assert candidate("LVIII") == 58
	assert candidate("DCXXI") == 621
	assert candidate("VI") == 6
	assert candidate("XXXVIII") == 38
	assert candidate("CCLXXX") == 280
	assert candidate("MMXIX") == 2019
	assert candidate("XIV") == 14
	assert candidate("MMXVI") == 2016
	assert candidate("IXX") == 19
	assert candidate("LXXX") == 80
	assert candidate("MCMLXXX") == 1980
	assert candidate("DI") == 501
	assert candidate("I") == 1
	assert candidate("DC") == 600
	assert candidate("XC") == 90
	assert candidate("MM") == 2000
	assert candidate("CCCLXXXVIII") == 388
	assert candidate("CI") == 101
	assert candidate("XXXVII") == 37
	assert candidate("DCCC") == 800
	assert candidate("XX") == 20
	assert candidate("CM") == 900
	assert candidate("XL") == 40
	assert candidate("XLIV") == 44
	assert candidate("MMMCI") == 3101
	assert candidate("CCCXL") == 340
	assert candidate("CDLXXXVIII") == 488
	assert candidate("CCCLXXII") == 372
	assert candidate("MMMCMXC") == 3990
	assert candidate("II") == 2
	assert candidate("V") == 5
	assert candidate("CCCLXIV") == 364
	assert candidate("CDII") == 402
	assert candidate("MMMDCCCLXVII") == 3867
	assert candidate("III") == 3
	assert candidate("XXIX") == 29
	assert candidate("MMMCM") == 3900
	assert candidate("CXVI") == 116
	assert candidate("XII") == 12
	assert candidate("VII") == 7
	assert candidate("XXX") == 30
	assert candidate("IV") == 4
	assert candidate("CCCCXCVIII") == 498
	assert candidate("CLXXVIII") == 178
	assert candidate("ML") == 1050
	assert candidate("CCXVII") == 217
	assert candidate("MMM") == 3000
	assert candidate("CC") == 200
	assert candidate("XCIX") == 99
	assert candidate("LXV") == 65
	assert candidate("L") == 50
	assert candidate("CCCXCIX") == 399
	assert candidate("XI") == 11
	assert candidate("CLX") == 160
	assert candidate("CXVII") == 117
	assert candidate("IX") == 9
	assert candidate("LX") == 60
def test_check():
	check(roman_to_int)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,math,string
# Metadata Coverage: 100
