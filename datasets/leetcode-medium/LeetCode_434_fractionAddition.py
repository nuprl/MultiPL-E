def fractionAddition(expression: str) -> str:
    """
    Given a string expression representing an expression of fraction addition and subtraction, return the calculation result in string format.
    The final result should be an irreducible fraction. If your final result is an integer, change it to the format of a fraction that has a denominator 1. So in this case, 2 should be converted to 2/1.
 
    Example 1:

    Input: expression = "-1/2+1/2"
    Output: "0/1"

    Example 2:

    Input: expression = "-1/2+1/2+1/3"
    Output: "1/3"

    Example 3:

    Input: expression = "1/3-1/2"
    Output: "-1/6"

 
    Constraints:

    The input string only contains '0' to '9', '/', '+' and '-'. So does the output.
    Each fraction (input and output) has the format ±numerator/denominator. If the first input fraction or the output is positive, then '+' will be omitted.
    The input only contains valid irreducible fractions, where the numerator and denominator of each fraction will always be in the range [1, 10]. If the denominator is 1, it means this fraction is actually an integer in a fraction format defined above.
    The number of given fractions will be in the range [1, 10].
    The numerator and denominator of the final result are guaranteed to be valid and in the range of 32-bit int.

    """
    ### Canonical solution below ###
    from fractions import Fraction
    fractions = expression.replace('+', ' +').replace('-', ' -').split()
    result = sum(Fraction(fraction) for fraction in fractions)
    return f"{result.numerator}/{result.denominator}"




### Unit tests below ###
def check(candidate):
	assert candidate("-1/3-2/3") == "-1/1"
	assert candidate("-1/12+1/12-1/24") == "-1/24"
	assert candidate("5/6-2/3") == "1/6"
	assert candidate("-1/2-1/2") == "-1/1"
	assert candidate("-1/4-1/2-1/4") == "-1/1"
	assert candidate("1/4+1/4+1/4+1/4") == "1/1"
	assert candidate("1/2+1/4") == "3/4"
	assert candidate("-1/3-1/3") == "-2/3"
	assert candidate("-1/12+1/12") == "0/1"
	assert candidate("-1/2-1/4") == "-3/4"
	assert candidate("1/4+1/2-1/4") == "1/2"
	assert candidate("1/3+2/3-1/3") == "2/3"
	assert candidate("0/2+0/2") == "0/1"
	assert candidate("2/3+4/6") == "4/3"
	assert candidate("7/8+1/8") == "1/1"
	assert candidate("1/3+1/2+1/6") == "1/1"
	assert candidate("-5/6-1/6") == "-1/1"
	assert candidate("-1/2-1/2-1/2-1/2") == "-2/1"
	assert candidate("1/4+3/4") == "1/1"
	assert candidate("1/2+1/2") == "1/1"
	assert candidate("1/3-1/3+1/3") == "1/3"
	assert candidate("1/3+1/3-2/3") == "0/1"
	assert candidate("1/2-1/2") == "0/1"
	assert candidate("1/3+1/2") == "5/6"
	assert candidate("-1/2+1/2-1/4") == "-1/4"
	assert candidate("-1/3+1/3-1/3") == "-1/3"
	assert candidate("-1/2+1/2+1/2-1/6") == "1/3"
	assert candidate("1/3+1/3+1/3") == "1/1"
	assert candidate("1/1+1/1") == "2/1"
	assert candidate("3/4-1/2") == "1/4"
	assert candidate("1/2+1/2+1/2-1/6") == "4/3"
	assert candidate("1/4-1/4") == "0/1"
	assert candidate("-1/4-1/4") == "-1/2"
	assert candidate("-1/2+1/2") == "0/1"
	assert candidate("5/6-1/3") == "1/2"
	assert candidate("1/3-1/2") == "-1/6"
	assert candidate("-1/2+1/2+1/3") == "1/3"
def test_check():
	check(fractionAddition)
# Metadata Difficulty: Medium
# Metadata Topics: math,string,simulation
# Metadata Coverage: 100
