from typing import List


def maxScoreSightseeingPair(values: List[int]) -> int:
    """
    You are given an integer array values where values[i] represents the value of the ith sightseeing spot. Two sightseeing spots i and j have a distance j - i between them.
    The score of a pair (i < j) of sightseeing spots is values[i] + values[j] + i - j: the sum of the values of the sightseeing spots, minus the distance between them.
    Return the maximum score of a pair of sightseeing spots.
 
    Example 1:

    Input: values = [8,1,5,2,6]
    Output: 11
    Explanation: i = 0, j = 2, values[i] + values[j] + i - j = 8 + 5 + 0 - 2 = 11

    Example 2:

    Input: values = [1,2]
    Output: 2

 
    Constraints:

    2 <= values.length <= 5 * 104
    1 <= values[i] <= 1000

    """
    ### Canonical solution below ###
    max_score = 0
    max_score_left = values[0] + 0
    for j in range(1, len(values)):
        max_score = max(max_score, max_score_left + values[j] - j)
        max_score_left = max(max_score_left, values[j] + j)
    return max_score




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8,9,10]) == 18
	assert candidate([10000]*10000) == 19999
	assert candidate([i for i in range(10000, 0, -1)]) == 19998
	assert candidate([3,2,1]) == 4
	assert candidate([1,4,2,5,3]) == 7
	assert candidate([i for i in range(1, 10001)]) == 19998
	assert candidate([1,2]) == 2
	assert candidate([1,2,3,4,5]) == 8
	assert candidate([1, 2]) == 2
	assert candidate(list(range(10000, 0, -1))) == 19998
	assert candidate([5,4,3,2,1]) == 8
	assert candidate([10,9,8,7,6,5,4,3,2,1]) == 18
	assert candidate(list(range(1, 10001))) == 19998
	assert candidate([2,2,2]) == 3
	assert candidate([8,1,5,2,6]) == 11
def test_check():
	check(maxScoreSightseeingPair)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming
# Metadata Coverage: 100
