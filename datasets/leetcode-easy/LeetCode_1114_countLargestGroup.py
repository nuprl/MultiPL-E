def countLargestGroup(n: int) -> int:
    """
    You are given an integer n.
    Each number from 1 to n is grouped according to the sum of its digits.
    Return the number of groups that have the largest size.
 
    Example 1:

    Input: n = 13
    Output: 4
    Explanation: There are 9 groups in total, they are grouped according sum of its digits of numbers from 1 to 13:
    [1,10], [2,11], [3,12], [4,13], [5], [6], [7], [8], [9].
    There are 4 groups with largest size.

    Example 2:

    Input: n = 2
    Output: 2
    Explanation: There are 2 groups [1], [2] of size 1.

 
    Constraints:

    1 <= n <= 104

    """
    ### Canonical solution below ###
    freq = [0] * 37
    max_group_size = 0
    max_group_count = 0

    for i in range(1, n + 1):
        _sum = sum(map(int, str(i)))
        freq[_sum] += 1
        max_group_size = max(max_group_size, freq[_sum])

    for count in freq:
        if count == max_group_size:
            max_group_count += 1

    return max_group_count




### Unit tests below ###
def check(candidate):
	assert candidate(1234) == 1
	assert candidate(109) == 1
	assert candidate(343) == 1
	assert candidate(7777) == 1
	assert candidate(13) == 4
	assert candidate(24) == 5
	assert candidate(15) == 6
	assert candidate(876) == 1
	assert candidate(2) == 2
	assert candidate(3333) == 1
	assert candidate(1111) == 1
	assert candidate(4321) == 1
	assert candidate(10000) == 1
	assert candidate(1) == 1
	assert candidate(888) == 1
	assert candidate(10) == 1
	assert candidate(999) == 2
def test_check():
	check(countLargestGroup)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,math
# Metadata Coverage: 100
