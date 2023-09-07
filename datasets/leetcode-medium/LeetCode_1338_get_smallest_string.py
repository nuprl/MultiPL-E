def get_smallest_string(n: int, k: int) -> str:
    """
    The numeric value of a lowercase character is defined as its position (1-indexed) in the alphabet, so the numeric value of a is 1, the numeric value of b is 2, the numeric value of c is 3, and so on.
    The numeric value of a string consisting of lowercase characters is defined as the sum of its characters' numeric values. For example, the numeric value of the string "abe" is equal to 1 + 2 + 5 = 8.
    You are given two integers n and k. Return the lexicographically smallest string with length equal to n and numeric value equal to k.
    Note that a string x is lexicographically smaller than string y if x comes before y in dictionary order, that is, either x is a prefix of y, or if i is the first position such that x[i] != y[i], then x[i] comes before y[i] in alphabetic order.
 
    Example 1:

    Input: n = 3, k = 27
    Output: "aay"
    Explanation: The numeric value of the string is 1 + 1 + 25 = 27, and it is the smallest string with such a value and length equal to 3.

    Example 2:

    Input: n = 5, k = 73
    Output: "aaszz"

 
    Constraints:

    1 <= n <= 105
    n <= k <= 26 * n

    """
    ### Canonical solution below ###
    result = ['a'] * n
    k -= n
    idx = n - 1
    while k > 0:
        value = min(k, 25)
        result[idx] = chr(ord(result[idx]) + value)
        k -= value
        idx -= 1
    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate(5, 73) == "aaszz"
	assert candidate(1, 26) == "z"
	assert candidate(1, 2) == "b"
	assert candidate(3, 27) == "aay"
	assert candidate(1, 1) == "a"
	assert candidate(2, 52) == "zz"
	assert candidate(1, 3) == "c"
	assert candidate(2, 1) == "aa"
def test_check():
	check(get_smallest_string)
# Metadata Difficulty: Medium
# Metadata Topics: string,greedy
# Metadata Coverage: 100
