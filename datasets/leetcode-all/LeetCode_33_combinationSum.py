from typing import List


def combinationSum(candidates: List[int], target: int) -> List[List[int]]:
    """
    Given an array of distinct integers candidates and a target integer target, return a list of all unique combinations of candidates where the chosen numbers sum to target. You may return the combinations in any order.
    The same number may be chosen from candidates an unlimited number of times. Two combinations are unique if the frequency of at least one of the chosen numbers is different.
    The test cases are generated such that the number of unique combinations that sum up to target is less than 150 combinations for the given input.
 
    Example 1:

    Input: candidates = [2,3,6,7], target = 7
    Output: [[2,2,3],[7]]
    Explanation:
    2 and 3 are candidates, and 2 + 2 + 3 = 7. Note that 2 can be used multiple times.
    7 is a candidate, and 7 = 7.
    These are the only two combinations.

    Example 2:

    Input: candidates = [2,3,5], target = 8
    Output: [[2,2,2,2],[2,3,3],[3,5]]

    Example 3:

    Input: candidates = [2], target = 1
    Output: []

 
    Constraints:

    1 <= candidates.length <= 30
    2 <= candidates[i] <= 40
    All elements of candidates are distinct.
    1 <= target <= 40

    """
    ### Canonical solution below ###
    def findCombinations(startIndex, remaining):
        if remaining == 0:
            return [[]]
        if startIndex == len(candidates) or remaining < 0:
            return []

        result = []
        result.extend(findCombinations(startIndex + 1, remaining))
        result.extend([x + [candidates[startIndex]] for x in findCombinations(startIndex, remaining - candidates[startIndex])])

        return result

    return findCombinations(0, target)




### Unit tests below ###
def check(candidate):
	assert candidate([2], 1) == []
	assert candidate(
    [1], 1) == [[1]]
	assert candidate([1], 1) == [[1]]
	assert candidate(
    [2, 3, 5], 1) == []
	assert candidate(
    [1], 2) == [[1, 1]]
	assert candidate([1], 2) == [[1, 1]]
def test_check():
	check(combinationSum)
# Metadata Difficulty: Medium
# Metadata Topics: array,backtracking
# Metadata Coverage: 100
