def nextGreaterElement(n: int) -> int:
    """
    Given a positive integer n, find the smallest integer which has exactly the same digits existing in the integer n and is greater in value than n. If no such positive integer exists, return -1.
    Note that the returned integer should fit in 32-bit integer, if there is a valid answer but it does not fit in 32-bit integer, return -1.
 
    Example 1:
    Input: n = 12
    Output: 21
    Example 2:
    Input: n = 21
    Output: -1

 
    Constraints:

    1 <= n <= 231 - 1

    """
    ### Canonical solution below ###
    from itertools import permutations
    num_str = str(n)
    num_permutations = sorted(set(int("".join(p)) for p in permutations(num_str)))
    index = num_permutations.index(n)
    if index + 1 < len(num_permutations) and num_permutations[index + 1] <= 2**31 - 1:
        return num_permutations[index + 1]
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate(1111111111) == -1
	assert candidate(2134) == 2143
	assert candidate(123456789) == 123456798
	assert candidate(100) == -1
	assert candidate(21) == -1
	assert candidate(132) == 213
	assert candidate(4321) == -1
	assert candidate(4123) == 4132
	assert candidate(2143) == 2314
	assert candidate(111111) == -1
	assert candidate(2341) == 2413
	assert candidate(4312) == 4321
	assert candidate(444444444) == -1
	assert candidate(3412) == 3421
	assert candidate(3421) == 4123
	assert candidate(4132) == 4213
	assert candidate(1000000000) == -1
	assert candidate(4213) == 4231
	assert candidate(211111) == -1
	assert candidate(211) == -1
	assert candidate(123) == 132
	assert candidate(2222222222) == -1
	assert candidate(111111111) == -1
	assert candidate(1000) == -1
	assert candidate(3124) == 3142
	assert candidate(4444444444) == -1
	assert candidate(3241) == 3412
	assert candidate(12543) == 13245
	assert candidate(12) == 21
	assert candidate(10) == -1
	assert candidate(1243) == 1324
	assert candidate(312) == 321
	assert candidate(10000) == -1
	assert candidate(231) == 312
	assert candidate(2413) == 2431
	assert candidate(1234567890) == 1234567908
	assert candidate(5555555555) == -1
	assert candidate(4231) == 4312
	assert candidate(3214) == 3241
	assert candidate(9876543210) == -1
	assert candidate(3333333333) == -1
	assert candidate(555555555) == -1
	assert candidate(999999999) == -1
	assert candidate(423) == 432
	assert candidate(64321) == -1
	assert candidate(321) == -1
	assert candidate(111) == -1
	assert candidate(3142) == 3214
	assert candidate(2431) == 3124
	assert candidate(1234) == 1243
	assert candidate(2314) == 2341
	assert candidate(41) == -1
	assert candidate(1) == -1
def test_check():
	check(nextGreaterElement)
# Metadata Difficulty: Medium
# Metadata Topics: math,two-pointers,string
# Metadata Coverage: 100
