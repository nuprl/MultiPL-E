def maximum69Number(num: int) -> int:
    """
    You are given a positive integer num consisting only of digits 6 and 9.
    Return the maximum number you can get by changing at most one digit (6 becomes 9, and 9 becomes 6).
 
    Example 1:

    Input: num = 9669
    Output: 9969
    Explanation: 
    Changing the first digit results in 6669.
    Changing the second digit results in 9969.
    Changing the third digit results in 9699.
    Changing the fourth digit results in 9666.
    The maximum number is 9969.

    Example 2:

    Input: num = 9996
    Output: 9999
    Explanation: Changing the last digit 6 to 9 results in the maximum number.

    Example 3:

    Input: num = 9999
    Output: 9999
    Explanation: It is better not to apply any change.

 
    Constraints:

    1 <= num <= 104
    num consists of only 6 and 9 digits.

    """
    ### Canonical solution below ###
    num_str = list(str(num))
    for i in range(len(num_str)):
        if num_str[i] == '6':
            num_str[i] = '9'
            break
    return int(''.join(num_str))




### Unit tests below ###
def check(candidate):
	assert candidate(6969) == 9969
	assert candidate(9666) == 9966
	assert candidate(9699) == 9999
	assert candidate(6666) == 9666
	assert candidate(6966) == 9966
	assert candidate(9969) == 9999
	assert candidate(6996) == 9996
	assert candidate(9996) == 9999
	assert candidate(9966) == 9996
	assert candidate(9999) == 9999
	assert candidate(9669) == 9969
	assert candidate(6669) == 9669
	assert candidate(6999) == 9999
	assert candidate(6699) == 9699
	assert candidate(6696) == 9696
	assert candidate(9696) == 9996
	assert candidate(99999) == 99999
def test_check():
	check(maximum69Number)
# Metadata Difficulty: Easy
# Metadata Topics: math,greedy
# Metadata Coverage: 100
