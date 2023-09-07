def getPermutation(n: int, k: int) -> str:
    """
    The set [1, 2, 3, ..., n] contains a total of n! unique permutations.
    By listing and labeling all of the permutations in order, we get the following sequence for n = 3:

    "123"
    "132"
    "213"
    "231"
    "312"
    "321"

    Given n and k, return the kth permutation sequence.
 
    Example 1:
    Input: n = 3, k = 3
    Output: "213"
    Example 2:
    Input: n = 4, k = 9
    Output: "2314"
    Example 3:
    Input: n = 3, k = 1
    Output: "123"

 
    Constraints:

    1 <= n <= 9
    1 <= k <= n!

    """
    ### Canonical solution below ###
    factorials = [1]
    nums = list(range(1, n + 1))
    result = []

    for i in range(1, n):
        factorials.append(factorials[-1] * i)

    k -= 1

    for i in range(n, 0, -1):
        index = k // factorials[i - 1]
        k %= factorials[i - 1]
        result.append(str(nums.pop(index)))

    return ''.join(result)




### Unit tests below ###
def check(candidate):
	assert candidate(9, 2) == "123456798"
	assert candidate(9, 3) == "123456879"
	assert candidate(7, 1) == "1234567"
	assert candidate(3, 1) == "123"
	assert candidate(2, 2) == "21"
	assert candidate(9, 1) == "123456789"
	assert candidate(7, 5040) == "7654321"
	assert candidate(6, 1) == "123456"
	assert candidate(4, 9) == "2314"
	assert candidate(4, 24) == "4321"
	assert candidate(8, 40320) == "87654321"
	assert candidate(4, 14) == "3142"
	assert candidate(5, 120) == "54321"
	assert candidate(5, 1) == "12345"
	assert candidate(1, 1) == "1"
	assert candidate(2, 1) == "12"
	assert candidate(4, 20) == "4132"
	assert candidate(4, 1) == "1234"
	assert candidate(5, 4) == "12453"
	assert candidate(4, 15) == "3214"
	assert candidate(9, 362880) == "987654321"
	assert candidate(3, 3) == "213"
def test_check():
	check(getPermutation)
# Metadata Difficulty: Hard
# Metadata Topics: math,recursion
# Metadata Coverage: 100
