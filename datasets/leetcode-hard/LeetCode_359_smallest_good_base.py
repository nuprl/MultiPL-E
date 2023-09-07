def smallest_good_base(n: str) -> str:
    """
    Given an integer n represented as a string, return the smallest good base of n.
    We call k >= 2 a good base of n, if all digits of n base k are 1's.
 
    Example 1:

    Input: n = "13"
    Output: "3"
    Explanation: 13 base 3 is 111.

    Example 2:

    Input: n = "4681"
    Output: "8"
    Explanation: 4681 base 8 is 11111.

    Example 3:

    Input: n = "1000000000000000000"
    Output: "999999999999999999"
    Explanation: 1000000000000000000 base 999999999999999999 is 11.

 
    Constraints:

    n is an integer in the range [3, 1018].
    n does not contain any leading zeros.

    """
    ### Canonical solution below ###
    num_n = int(n)

    for m in range(int(num_n.bit_length()), 0, -1):
        k = int(num_n ** (1.0 / m))
        if sum(k**i for i in range(m+1)) == num_n:
            return str(k)

    return "-1"




### Unit tests below ###
def check(candidate):
	assert candidate("13") == "3"
	assert candidate("2") == "-1"
	assert candidate("1000000000000000011") == "-1"
	assert candidate("4681") == "8"
	assert candidate("12") == "-1"
	assert candidate("1000000000000000010") == "-1"
	assert candidate("10000000000000000101") == "-1"
	assert candidate("1234") == "-1"
	assert candidate(
    "122221221222212223") == "-1"
def test_check():
	check(smallest_good_base)
# Metadata Difficulty: Hard
# Metadata Topics: math,binary-search
# Metadata Coverage: 100
