from typing import List


def combinationSum2(candidates: List[int], target: int) -> List[List[int]]:
    """
    Given a collection of candidate numbers (candidates) and a target number (target), find all unique combinations in candidates where the candidate numbers sum to target.
    Each number in candidates may only be used once in the combination.
    Note: The solution set must not contain duplicate combinations.
 
    Example 1:

    Input: candidates = [10,1,2,7,6,1,5], target = 8
    Output: 
    [
    [1,1,6],
    [1,2,5],
    [1,7],
    [2,6]
    ]

    Example 2:

    Input: candidates = [2,5,2,1,2], target = 5
    Output: 
    [
    [1,2,2],
    [5]
    ]

 
    Constraints:

    1 <= candidates.length <= 100
    1 <= candidates[i] <= 50
    1 <= target <= 30

    """
    ### Canonical solution below ###
    def combine(candidates, target, start, path, res):
        if target == 0:
            res.append(path)
            return
        for i in range(start, len(candidates)):
            if i > start and candidates[i] == candidates[i - 1]:
                continue
            if candidates[i] > target:
                break
            combine(candidates, target - candidates[i], i+1, path + [candidates[i]], res)

    candidates.sort()
    res = []
    combine(candidates, target, 0, [], res)
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,1,1,1], 2) == [[1,1]]
	assert candidate([1,2,3,4,5], 5) == [[1, 4], [2, 3], [5]]
	assert candidate([10,1,2,7,6,1,5], 8) == [[1,1,6], [1,2,5], [1,7], [2,6]]
	assert candidate([4,4,4,4,4], 8) == [[4,4]]
	assert candidate([1], 1) == [[1]]
	assert candidate([1,1,1,1,1], 5) == [[1,1,1,1,1]]
	assert candidate([2,5,2,1,2], 5) == [[1,2,2], [5]]
	assert candidate([1,2,3,4,5], 1) == [[1]]
	assert candidate(
    [10,1,2,7,6,1,5], 8
) == [[1,1,6], [1,2,5], [1,7], [2,6]]
	assert candidate([1,1], 2) == [[1,1]]
	assert candidate([1], 2) == []
	assert candidate(
    [1,2,3,4,5], 5
) == [[1, 4], [2, 3], [5]]
def test_check():
	check(combinationSum2)
# Metadata Difficulty: Medium
# Metadata Topics: array,backtracking
# Metadata Coverage: 100
