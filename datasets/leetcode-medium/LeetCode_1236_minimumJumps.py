from typing import List


def minimumJumps(forbidden: List[int], a: int, b: int, x: int) -> int:
    """
    A certain bug's home is on the x-axis at position x. Help them get there from position 0.
    The bug jumps according to the following rules:

    It can jump exactly a positions forward (to the right).
    It can jump exactly b positions backward (to the left).
    It cannot jump backward twice in a row.
    It cannot jump to any forbidden positions.

    The bug may jump forward beyond its home, but it cannot jump to positions numbered with negative integers.
    Given an array of integers forbidden, where forbidden[i] means that the bug cannot jump to the position forbidden[i], and integers a, b, and x, return the minimum number of jumps needed for the bug to reach its home. If there is no possible sequence of jumps that lands the bug on position x, return -1.
 
    Example 1:

    Input: forbidden = [14,4,18,1,15], a = 3, b = 15, x = 9
    Output: 3
    Explanation: 3 jumps forward (0 -> 3 -> 6 -> 9) will get the bug home.

    Example 2:

    Input: forbidden = [8,3,16,6,12,20], a = 15, b = 13, x = 11
    Output: -1

    Example 3:

    Input: forbidden = [1,6,2,14,5,17,4], a = 16, b = 9, x = 7
    Output: 2
    Explanation: One jump forward (0 -> 16) then one jump backward (16 -> 7) will get the bug home.

 
    Constraints:

    1 <= forbidden.length <= 1000
    1 <= a, b, forbidden[i] <= 2000
    0 <= x <= 2000
    All the elements in forbidden are distinct.
    Position x is not forbidden.

    """
    ### Canonical solution below ###
    from collections import deque
    forbidden_positions = set(forbidden)
    q = deque([(0, 0, 0)])
    visited = {(0, 0)}
    while q:
        pos, steps, backward = q.popleft()
        if pos == x:
            return steps
        forward_pos = pos + a
        backward_pos = pos - b
        if forward_pos <= 6000 and forward_pos not in forbidden_positions and (forward_pos, 0) not in visited:
            visited.add((forward_pos, 0))
            q.append((forward_pos, steps + 1, 0))
        if backward == 0 and backward_pos > 0 and backward_pos not in forbidden_positions and (backward_pos, 1) not in visited:
            visited.add((backward_pos, 1))
            q.append((backward_pos, steps + 1, 1))
    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([1,6,2,14,5,17,4], 16, 9, 7) == 2
	assert candidate([1,1,1,1,1], 1, 1, 1) == -1
	assert candidate([5,10,15,20,25], 10, 5, 0) == 0
	assert candidate([1,4,6,9], 3, 3, 2) == -1
	assert candidate([2,1,2,1,1,2,1], 2, 2, 3) == -1
	assert candidate([1,2,3,4,5], 1, 2, 6) == -1
	assert candidate([1,3,5,7,9], 3, 1, 2) == -1
	assert candidate([1,3,5,7,9], 3, 1, 4) == -1
	assert candidate([14,4,18,1,15], 3, 15, 9) == 3
	assert candidate([1,4,7,10,13], 3, 2, 12) == 4
	assert candidate([1,2,3,4,5], 1, 2, 0) == 0
	assert candidate([1,3,5,7,9], 3, 1, 6) == -1
	assert candidate([1,4,7,10,13], 3, 3, 12) == 4
	assert candidate([1,3,5,7,9], 2, 1, 4) == 2
	assert candidate([1,2,3,4,5,6,7,8], 1, 1, 1) == -1
	assert candidate([1,2,3,4], 4, 3, 4) == -1
	assert candidate([1000,1], 1000, 1000, 0) == 0
	assert candidate([8,3,16,6,12,20], 15, 13, 11) == -1
	assert candidate([2,4,8,10,14], 3, 2, 12) == 4
	assert candidate([1,2,3,4], 3, 2, 4) == -1
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15], 5, 10, 12) == -1
	assert candidate([1,2,0,3,4], 3, 2, 4) == -1
	assert candidate([2,5,8,11,14], 3, 3, 7) == -1
	assert candidate([1,2,3,4,5,6,7,8], 1, 1, 0) == 0
	assert candidate([4,6,8,10,12], 2, 4, 7) == -1
def test_check():
	check(minimumJumps)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,breadth-first-search
# Metadata Coverage: 100
