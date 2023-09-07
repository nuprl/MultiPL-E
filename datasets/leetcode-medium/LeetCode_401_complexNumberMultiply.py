def complexNumberMultiply(num1: str, num2: str) -> str:
    """
    A complex number can be represented as a string on the form "real+imaginaryi" where:

    real is the real part and is an integer in the range [-100, 100].
    imaginary is the imaginary part and is an integer in the range [-100, 100].
    i2 == -1.

    Given two complex numbers num1 and num2 as strings, return a string of the complex number that represents their multiplications.
 
    Example 1:

    Input: num1 = "1+1i", num2 = "1+1i"
    Output: "0+2i"
    Explanation: (1 + i) * (1 + i) = 1 + i2 + 2 * i = 2i, and you need convert it to the form of 0+2i.

    Example 2:

    Input: num1 = "1+-1i", num2 = "1+-1i"
    Output: "0+-2i"
    Explanation: (1 - i) * (1 - i) = 1 + i2 - 2 * i = -2i, and you need convert it to the form of 0+-2i.

 
    Constraints:

    num1 and num2 are valid complex numbers.

    """
    ### Canonical solution below ###
    real1, imag1 = map(int, num1[:-1].split('+'))
    real2, imag2 = map(int, num2[:-1].split('+'))

    real = real1 * real2 - imag1 * imag2
    imag = real1 * imag2 + real2 * imag1

    return f"{real}+{imag}i"




### Unit tests below ###
def check(candidate):
	assert candidate("0+0i", "1+1i") == "0+0i"
	assert candidate("0+0i", "100+100i") == "0+0i"
	assert candidate("100+0i", "0+100i") == "0+10000i"
	assert candidate("1+1i", "0+0i") == "0+0i"
	assert candidate("1+-1i", "1+-1i") == "0+-2i"
	assert candidate("0+1i", "1+0i") == "0+1i"
	assert candidate("1+1i", "1+1i") == "0+2i"
	assert candidate("100+100i", "100+100i") == "0+20000i"
	assert candidate("0+100i", "100+0i") == "0+10000i"
	assert candidate(
    "-100000000+100000000i", "1+0i") == "-100000000+100000000i"
	assert candidate("1+0i", "0+1i") == "0+1i"
	assert candidate("100+100i", "0+0i") == "0+0i"
	assert candidate("-100+-100i", "-100+-100i") == "0+20000i"
def test_check():
	check(complexNumberMultiply)
# Metadata Difficulty: Medium
# Metadata Topics: math,string,simulation
# Metadata Coverage: 100
