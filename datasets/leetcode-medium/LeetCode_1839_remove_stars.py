def remove_stars(s: str) -> str:
    """
    You are given a string s, which contains stars *.
    In one operation, you can:

    Choose a star in s.
    Remove the closest non-star character to its left, as well as remove the star itself.

    Return the string after all stars have been removed.
    Note:

    The input will be generated such that the operation is always possible.
    It can be shown that the resulting string will always be unique.

 
    Example 1:

    Input: s = "leet**cod*e"
    Output: "lecoe"
    Explanation: Performing the removals from left to right:
    - The closest character to the 1st star is 't' in "leet**cod*e". s becomes "lee*cod*e".
    - The closest character to the 2nd star is 'e' in "lee*cod*e". s becomes "lecod*e".
    - The closest character to the 3rd star is 'd' in "lecod*e". s becomes "lecoe".
    There are no more stars, so we return "lecoe".
    Example 2:

    Input: s = "erase*****"
    Output: ""
    Explanation: The entire string is removed, so we return an empty string.

 
    Constraints:

    1 <= s.length <= 105
    s consists of lowercase English letters and stars *.
    The operation above can be performed on s.

    """
    ### Canonical solution below ###
    result = []
    for c in s:
        if c == '*':
            if result:
                result.pop()
        else:
            result.append(c)
    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate(
    "******************************************************************") == ""
	assert candidate("a*****a") == "a"
	assert candidate("****abc") == "abc"
	assert candidate("erase***** ") == " "
	assert candidate("*******************************************************abc") == "abc"
	assert candidate(
    "a****b*c*d*e"
) == "e"
	assert candidate("a") == "a"
	assert candidate("**********a******") == ""
	assert candidate("a****a") == "a"
	assert candidate("a*b*c*d*e*f*g") == "g"
	assert candidate("a*") == ""
	assert candidate("leet**cod*e ") == "lecoe "
	assert candidate("a*a*a*a") == "a"
	assert candidate("*****") == ""
	assert candidate("abc****") == ""
	assert candidate("a*b*c*d*e*f*g*h*i*j*k") == "k"
	assert candidate(
    "*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a*a") == "a"
	assert candidate("a*****a*****a*a*a") == "a"
	assert candidate("*********") == ""
	assert candidate("a*b*c") == "c"
	assert candidate("a***b") == "b"
	assert candidate("***") == ""
	assert candidate("ab***a**c") == "c"
	assert candidate("a*b*c*d*e*f*g*h*i*j*k*l*m") == "m"
	assert candidate("a****b") == "b"
	assert candidate("a*b*c*d*e") == "e"
	assert candidate("a*b*c*d*e*f*g*h") == "h"
	assert candidate("a*b*c*d*e*f*g*h*i*j*k*l*m*n") == "n"
	assert candidate("********a") == "a"
	assert candidate(
    "leet**cod*e") == "lecoe"
	assert candidate("a*****a*****a*a*a*******") == ""
	assert candidate("a*b*c*d*e*f*g*h*i*j*k*l") == "l"
	assert candidate("a*b*c*d*e*f*g*h*i*j") == "j"
	assert candidate("*") == ""
	assert candidate("a*b*c*d*e*f") == "f"
	assert candidate("a**a") == "a"
	assert candidate("a*b*c*d*e*f*g*h*i*j*k*l*m*n*o") == "o"
	assert candidate("a*b*c*d*e*f*g*h*i") == "i"
	assert candidate("a***b**c*d") == "d"
	assert candidate("ab*") == "a"
	assert candidate("a********") == ""
def test_check():
	check(remove_stars)
# Metadata Difficulty: Medium
# Metadata Topics: string,stack,simulation
# Metadata Coverage: 100
