from typing import List


def find_min_moves(machines: List[int]) -> int:
    """
    You have n super washing machines on a line. Initially, each washing machine has some dresses or is empty.
    For each move, you could choose any m (1 <= m <= n) washing machines, and pass one dress of each washing machine to one of its adjacent washing machines at the same time.
    Given an integer array machines representing the number of dresses in each washing machine from left to right on the line, return the minimum number of moves to make all the washing machines have the same number of dresses. If it is not possible to do it, return -1.
 
    Example 1:

    Input: machines = [1,0,5]
    Output: 3
    Explanation:
    1st move:    1     0 <-- 5    =>    1     1     4
    2nd move:    1 <-- 1 <-- 4    =>    2     1     3
    3rd move:    2     1 <-- 3    =>    2     2     2

    Example 2:

    Input: machines = [0,3,0]
    Output: 2
    Explanation:
    1st move:    0 <-- 3     0    =>    1     2     0
    2nd move:    1     2 --> 0    =>    1     1     1

    Example 3:

    Input: machines = [0,2,0]
    Output: -1
    Explanation:
    It's impossible to make all three washing machines have the same number of dresses.

 
    Constraints:

    n == machines.length
    1 <= n <= 104
    0 <= machines[i] <= 105

    """
    ### Canonical solution below ###
    n = len(machines)
    total_dresses = sum(machines)
    if total_dresses % n != 0:
        return -1
    average = total_dresses // n
    moves = 0
    imbalance = 0

    for i in range(n):
        imbalance += machines[i] - average
        moves = max(moves, abs(imbalance), machines[i] - average)

    return moves




### Unit tests below ###
def check(candidate):
	assert candidate([10,0,0]) == -1
	assert candidate([1,0,5]) == 3
	assert candidate([0,3,0]) == 2
	assert candidate([1000000000,1000000000,1000000000,1000000000,1000000000,1000000000,1000000000,1000000000,1000000000]) == 0
	assert candidate([10,10,10]) == 0
	assert candidate([0,0,0]) == 0
	assert candidate([1000,1000,1000]) == 0
	assert candidate(
    [1000,1000,1000,1000,1000]) == 0
	assert candidate([1000,0,0]) == -1
	assert candidate([1,1,1,1,1]) == 0
	assert candidate([0,0,100]) == -1
	assert candidate([0,100,0]) == -1
	assert candidate(
    [200000000000000000, 200000000000000000, 200000000000000000]) == 0
	assert candidate([2,2,2,2,2]) == 0
	assert candidate([1,1,1]) == 0
	assert candidate([0,2,0]) == -1
	assert candidate([100,100,100]) == 0
	assert candidate([5,5,5]) == 0
	assert candidate(
    [1000000000000000000, 1000000000000000000]) == 0
	assert candidate([5,0,0]) == -1
	assert candidate([3,3,3,3,3]) == 0
def test_check():
	check(find_min_moves)
# Metadata Difficulty: Hard
# Metadata Topics: array,greedy
# Metadata Coverage: 100
