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
    groups = [0] * 37
    largest_group_size = 0
    count_largest_groups = 0

    for i in range(1, n + 1):
        sum_of_digits = sum(map(int, str(i)))
        groups[sum_of_digits] += 1
        if groups[sum_of_digits] > largest_group_size:
            largest_group_size = groups[sum_of_digits]
            count_largest_groups = 1
        elif groups[sum_of_digits] == largest_group_size:
            count_largest_groups += 1

    return count_largest_groups




### Unit tests below ###
def check(candidate):
	assert candidate(555) == 1
	assert candidate(8888) == 1
	assert candidate(13) == 4
	assert candidate(66) == 4
	assert candidate(2) == 2
	assert candidate(20) == 1
	assert candidate(101) == 1
	assert candidate(666) == 1
	assert candidate(3) == 3
	assert candidate(10000) == 1
	assert candidate(88) == 2
	assert candidate(1) == 1
	assert candidate(888) == 1
	assert candidate(11) == 2
	assert candidate(111) == 1
def test_check():
	check(countLargestGroup)
# Metadata Difficulty: Easy
# Metadata Topics: hash-table,math
# Metadata Coverage: 100
