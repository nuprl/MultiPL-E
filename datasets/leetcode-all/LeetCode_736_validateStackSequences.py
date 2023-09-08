from typing import List


def validateStackSequences(pushed: List[int], popped: List[int]) -> bool:
    """
    Given two integer arrays pushed and popped each with distinct values, return true if this could have been the result of a sequence of push and pop operations on an initially empty stack, or false otherwise.
 
    Example 1:

    Input: pushed = [1,2,3,4,5], popped = [4,5,3,2,1]
    Output: true
    Explanation: We might do the following sequence:
    push(1), push(2), push(3), push(4),
    pop() -> 4,
    push(5),
    pop() -> 5, pop() -> 3, pop() -> 2, pop() -> 1

    Example 2:

    Input: pushed = [1,2,3,4,5], popped = [4,3,5,1,2]
    Output: false
    Explanation: 1 cannot be popped before 2.

 
    Constraints:

    1 <= pushed.length <= 1000
    0 <= pushed[i] <= 1000
    All the elements of pushed are unique.
    popped.length == pushed.length
    popped is a permutation of pushed.

    """
    ### Canonical solution below ###
    stack = []
    popIndex = 0

    for pushValue in pushed:
        stack.append(pushValue)
        while stack and stack[-1] == popped[popIndex]:
            stack.pop()
            popIndex += 1

    return not stack




### Unit tests below ###
def check(candidate):
	assert candidate([1, 2, 3, 4, 5], [1, 2, 3, 4, 5]) == True
	assert candidate([1, 2, 3, 4, 5], [5, 4, 2, 3, 1]) == False
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20], [10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 1, 2, 3, 4, 5, 6, 7, 8, 9]
) == False
	assert candidate([2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [2, 1, 4, 3, 6, 5, 8, 7, 10, 9]) == True
	assert candidate(
    [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20],
    [20, 19, 18, 17, 16, 15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
) == True
	assert candidate(
    [18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50],
    [49, 42, 41, 47, 40, 50, 33, 48, 31, 23, 27, 46, 26, 45, 36, 30, 35, 32, 43, 29, 19, 20, 22, 18, 21, 25, 39, 38, 37, 34]) == False
	assert candidate(
    [18, 19, 10, 12, 13, 7, 6, 11, 14, 3, 4, 5, 15, 16, 2, 17], [15, 12, 11, 3, 13, 6, 10, 14, 16, 19, 2, 5, 7, 4, 18, 17, 1, 9, 8, 0]) == False
	assert candidate([1, 2, 3, 4, 5], [5, 4, 3, 2, 1]) == True
	assert candidate([2, 1, 4, 3, 6, 5, 8, 7, 10, 9], [9, 10, 7, 8, 5, 6, 3, 4, 1, 2]) == True
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]) == True
def test_check():
	check(validateStackSequences)
# Metadata Difficulty: Medium
# Metadata Topics: array,stack,simulation
# Metadata Coverage: 100
