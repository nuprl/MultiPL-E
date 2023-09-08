def is_number(s: str) -> bool:
    """
    A valid number can be split up into these components (in order):

    A decimal number or an integer.
    (Optional) An 'e' or 'E', followed by an integer.

    A decimal number can be split up into these components (in order):

    (Optional) A sign character (either '+' or '-').
    One of the following formats:

    One or more digits, followed by a dot '.'.
    One or more digits, followed by a dot '.', followed by one or more digits.
    A dot '.', followed by one or more digits.



    An integer can be split up into these components (in order):

    (Optional) A sign character (either '+' or '-').
    One or more digits.

    For example, all the following are valid numbers: ["2", "0089", "-0.1", "+3.14", "4.", "-.9", "2e10", "-90E3", "3e+7", "+6e-1", "53.5e93", "-123.456e789"], while the following are not valid numbers: ["abc", "1a", "1e", "e3", "99e2.5", "--6", "-+3", "95a54e53"].
    Given a string s, return true if s is a valid number.
 
    Example 1:

    Input: s = "0"
    Output: true

    Example 2:

    Input: s = "e"
    Output: false

    Example 3:

    Input: s = "."
    Output: false

 
    Constraints:

    1 <= s.length <= 20
    s consists of only English letters (both uppercase and lowercase), digits (0-9), plus '+', minus '-', or dot '.'.

    """
    ### Canonical solution below ###
    import re
    pattern = re.compile(r'^[-+]?(([0-9]+(\.[0-9]*)?)|(\.[0-9]+))(e[-+]?[0-9]+)?$')
    return bool(pattern.match(s))




### Unit tests below ###
def check(candidate):
	assert candidate("3e+") == False
	assert candidate("-1.2e-5.") == False
	assert candidate("6e-1.") == False
	assert candidate(".") == False
	assert candidate("-.8e-1") == True
	assert candidate(".1e2") == True
	assert candidate("0e") == False
	assert candidate("0.123e7") == True
	assert candidate("3e+7") == True
	assert candidate("123.e-2") == True
	assert candidate("2") == True
	assert candidate("+.8") == True
	assert candidate("+3.14") == True
	assert candidate("1.2e5.") == False
	assert candidate(".1e") == False
	assert candidate("-4.3e-10") == True
	assert candidate("--6") == False
	assert candidate("+") == False
	assert candidate("2e10") == True
	assert candidate("99e2.5") == False
	assert candidate("3.e2") == True
	assert candidate("+12E") == False
	assert candidate("+.123") == True
	assert candidate("123.456e789") == True
	assert candidate("12.3") == True
	assert candidate("0") == True
	assert candidate("+6e-1") == True
	assert candidate("12e5") == True
	assert candidate("-.") == False
	assert candidate("3e-") == False
	assert candidate("-.9") == True
	assert candidate("3e+7.") == False
	assert candidate("-.123e-4") == True
	assert candidate("-") == False
	assert candidate("+12e-") == False
	assert candidate("e3") == False
	assert candidate("-1.2e-5") == True
	assert candidate("1.2e+5") == True
	assert candidate("e2") == False
	assert candidate("46.00") == True
	assert candidate("1a") == False
	assert candidate(".e1") == False
	assert candidate("+1.23e4") == True
	assert candidate("e-1") == False
	assert candidate("12e5.") == False
	assert candidate("-0.1") == True
	assert candidate("+1.2E-5.") == False
	assert candidate("46.e3") == True
	assert candidate("+E3") == False
	assert candidate("+.123e+4") == True
	assert candidate("1.2e-5") == True
	assert candidate("-123.456e789") == True
	assert candidate("3.") == True
	assert candidate("1.23") == True
	assert candidate("-1.2E5.") == False
	assert candidate("-0.1e-2") == True
	assert candidate("+-3") == False
	assert candidate("+22.") == True
	assert candidate("-.9e-1") == True
	assert candidate("3e-7") == True
	assert candidate("-.123") == True
	assert candidate("-e") == False
	assert candidate("abc") == False
	assert candidate("-.1e2") == True
	assert candidate("3e7") == True
	assert candidate("-e3") == False
	assert candidate("7.e-1") == True
	assert candidate("+1.23") == True
	assert candidate("0e-2") == True
	assert candidate("+1.2e-5.") == False
	assert candidate("-1.23e4") == True
	assert candidate("123.E-2.5") == False
	assert candidate("0089") == True
	assert candidate("4.") == True
	assert candidate("1e") == False
	assert candidate("-+3") == False
	assert candidate(".1") == True
	assert candidate("e+789") == False
	assert candidate(" ") == False
	assert candidate("-6.e+8") == True
	assert candidate("12e-3.5") == False
	assert candidate("1e-1.3") == False
	assert candidate("+1.2e-5") == True
	assert candidate(".00e+2") == True
	assert candidate("3e-6") == True
	assert candidate("e") == False
	assert candidate("123.e-2.5") == False
	assert candidate("1e2.458") == False
	assert candidate("-e10") == False
	assert candidate("4") == True
	assert candidate("-1.2e5") == True
	assert candidate("95a54e53") == False
	assert candidate("53.5e93") == True
	assert candidate("123.") == True
	assert candidate("-12E") == False
def test_check():
	check(is_number)
# Metadata Difficulty: Hard
# Metadata Topics: string
# Metadata Coverage: 100
