from typing import List


def min_operations(boxes: str) -> List[int]:
    """
    You have n boxes. You are given a binary string boxes of length n, where boxes[i] is '0' if the ith box is empty, and '1' if it contains one ball.
    In one operation, you can move one ball from a box to an adjacent box. Box i is adjacent to box j if abs(i - j) == 1. Note that after doing so, there may be more than one ball in some boxes.
    Return an array answer of size n, where answer[i] is the minimum number of operations needed to move all the balls to the ith box.
    Each answer[i] is calculated considering the initial state of the boxes.
 
    Example 1:

    Input: boxes = "110"
    Output: [1,1,3]
    Explanation: The answer for each box is as follows:
    1) First box: you will have to move one ball from the second box to the first box in one operation.
    2) Second box: you will have to move one ball from the first box to the second box in one operation.
    3) Third box: you will have to move one ball from the first box to the third box in two operations, and move one ball from the second box to the third box in one operation.

    Example 2:

    Input: boxes = "001011"
    Output: [11,8,5,4,3,4]
 
    Constraints:

    n == boxes.length
    1 <= n <= 2000
    boxes[i] is either '0' or '1'.

    """
    ### Canonical solution below ###
    result = [0] * len(boxes)
    count, total = 0, 0

    for i in range(len(boxes)):
        total += count
        result[i] = total
        if boxes[i] == '1':
            count += 1

    count, total = 0, 0
    for i in range(len(boxes) - 1, -1, -1):
        total += count
        result[i] += total
        if boxes[i] == '1':
            count += 1

    return result




### Unit tests below ###
def check(candidate):
	assert candidate(
    '001011') == [11, 8, 5, 4, 3, 4]
	assert candidate('100') == [0, 1, 2]
	assert candidate('0000') == [0, 0, 0, 0]
	assert candidate('110') == [1, 1, 3]
	assert candidate('001011') == [11, 8, 5, 4, 3, 4]
	assert candidate('00000') == [0, 0, 0, 0, 0]
	assert candidate('010') == [1, 0, 1]
	assert candidate('000') == [0, 0, 0]
	assert candidate(
    '1000') == [0, 1, 2, 3]
def test_check():
	check(min_operations)
# Metadata Difficulty: Medium
# Metadata Topics: array,string
# Metadata Coverage: 100
