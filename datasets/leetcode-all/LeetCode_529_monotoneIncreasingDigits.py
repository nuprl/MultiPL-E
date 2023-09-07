def monotoneIncreasingDigits(n: int) -> int:
    """
    An integer has monotone increasing digits if and only if each pair of adjacent digits x and y satisfy x <= y.
    Given an integer n, return the largest number that is less than or equal to n with monotone increasing digits.
 
    Example 1:

    Input: n = 10
    Output: 9

    Example 2:

    Input: n = 1234
    Output: 1234

    Example 3:

    Input: n = 332
    Output: 299

 
    Constraints:

    0 <= n <= 109

    """
    ### Canonical solution below ###
    n_str = [c for c in str(n)]

    i = len(n_str) - 1
    while i > 0:
        if n_str[i] < n_str[i - 1]:
            n_str[i - 1] = chr(ord(n_str[i - 1]) - 1)
            for j in range(i, len(n_str)):
                n_str[j] = '9'
        i -= 1

    return int(''.join(n_str))




### Unit tests below ###
def check(candidate):
	assert candidate(12345) == 12345
	assert candidate(100000) == 99999
	assert candidate(1000000000) == 999999999
	assert candidate(123456789) == 123456789
	assert candidate(9) == 9
	assert candidate(444) == 444
	assert candidate(4321) == 3999
	assert candidate(100) == 99
	assert candidate(66666) == 66666
	assert candidate(7777) == 7777
	assert candidate(9876) == 8999
	assert candidate(987654321) == 899999999
	assert candidate(4444444) == 4444444
	assert candidate(888) == 888
	assert candidate(1234) == 1234
	assert candidate(10000000) == 9999999
	assert candidate(56789) == 56789
	assert candidate(1111) == 1111
	assert candidate(444444444) == 444444444
	assert candidate(222222222) == 222222222
	assert candidate(33221199) == 29999999
	assert candidate(120) == 119
	assert candidate(100000000000) == 99999999999
	assert candidate(4321111) == 3999999
	assert candidate(321) == 299
	assert candidate(1234567) == 1234567
	assert candidate(1111111111) == 1111111111
	assert candidate(654) == 599
	assert candidate(765) == 699
	assert candidate(21) == 19
	assert candidate(432) == 399
	assert candidate(100000000) == 99999999
	assert candidate(332211) == 299999
	assert candidate(987) == 899
	assert candidate(543) == 499
	assert candidate(1000000) == 999999
	assert candidate(555555) == 555555
	assert candidate(12345678) == 12345678
	assert candidate(33333333) == 33333333
	assert candidate(1000000000000) == 999999999999
	assert candidate(64756) == 59999
	assert candidate(210) == 199
	assert candidate(999999999999999) == 999999999999999
	assert candidate(654321) == 599999
	assert candidate(10000) == 9999
	assert candidate(33) == 33
	assert candidate(1234567899999) == 1234567899999
	assert candidate(333) == 333
	assert candidate(6789) == 6789
	assert candidate(10) == 9
	assert candidate(0) == 0
	assert candidate(3322) == 2999
	assert candidate(1) == 1
	assert candidate(999999) == 999999
	assert candidate(99) == 99
	assert candidate(1000) == 999
	assert candidate(3322119) == 2999999
	assert candidate(123) == 123
	assert candidate(123456) == 123456
	assert candidate(876) == 799
	assert candidate(99999) == 99999
	assert candidate(44444444) == 44444444
	assert candidate(332) == 299
def test_check():
	check(monotoneIncreasingDigits)
# Metadata Difficulty: Medium
# Metadata Topics: math,greedy
# Metadata Coverage: 100
