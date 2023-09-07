from typing import List


def min_taps(n: int, ranges: List[int]) -> int:
    """
    There is a one-dimensional garden on the x-axis. The garden starts at the point 0 and ends at the point n. (i.e., the length of the garden is n).
    There are n + 1 taps located at points [0, 1, ..., n] in the garden.
    Given an integer n and an integer array ranges of length n + 1 where ranges[i] (0-indexed) means the i-th tap can water the area [i - ranges[i], i + ranges[i]] if it was open.
    Return the minimum number of taps that should be open to water the whole garden, If the garden cannot be watered return -1.
 
    Example 1:


    Input: n = 5, ranges = [3,4,1,1,0,0]
    Output: 1
    Explanation: The tap at point 0 can cover the interval [-3,3]
    The tap at point 1 can cover the interval [-3,5]
    The tap at point 2 can cover the interval [1,3]
    The tap at point 3 can cover the interval [2,4]
    The tap at point 4 can cover the interval [4,4]
    The tap at point 5 can cover the interval [5,5]
    Opening Only the second tap will water the whole garden [0,5]

    Example 2:

    Input: n = 3, ranges = [0,0,0,0]
    Output: -1
    Explanation: Even if you activate all the four taps you cannot water the whole garden.

 
    Constraints:

    1 <= n <= 104
    ranges.length == n + 1
    0 <= ranges[i] <= 100

    """
    ### Canonical solution below ###
    intervals = [0] * (n + 1)
    for i in range(n + 1):
        left = max(0, i - ranges[i])
        right = min(n, i + ranges[i])
        intervals[left] = max(intervals[left], right - left)

    position, total_taps, max_reach = 0, 0, 0
    while position < n:
        max_reach = max(max_reach, position + intervals[position])
        if max_reach == position:
            return -1
        position = max_reach
        total_taps += 1

    return total_taps




### Unit tests below ###
def check(candidate):
	assert candidate(2, [2, 1, 2]) == 1
	assert candidate(5, [3, 2, 1, 1, 2, 2]) == 2
	assert candidate(8, [4, 0, 0, 0, 0, 0, 0, 0, 4]) == 2
	assert candidate(3, [2, 3, 1, 1, 1]) == 1
	assert candidate(3, [0, 0, 0, 0]) == -1
	assert candidate(2, [1, 2, 1]) == 1
	assert candidate(1, [1, 1]) == 1
	assert candidate(5, [2, 2, 1, 2, 1, 3]) == 2
	assert candidate(5, [3, 4, 1, 1, 0, 0]) == 1
	assert candidate(3, [0, 0, 3, 0]) == 1
	assert candidate(3, [3, 2, 1, 1]) == 1
	assert candidate(3, [3, 0, 0, 0]) == 1
	assert candidate(8, [4, 0, 0, 0, 4, 0, 0, 0, 4]) == 1
	assert candidate(3, [2, 1, 1, 1]) == 2
	assert candidate(0, [0]) == 0
	assert candidate(10, [5, 5, 2, 1, 5, 1, 5, 2, 1, 5, 2]) == -1
	assert candidate(5, [3, 2, 1, 1, 1, 1]) == 2
	assert candidate(2, [2, 1, 1]) == 1
	assert candidate(3, [2, 1, 2, 1]) == 1
	assert candidate(3, [4, 0, 0, 0, 0, 0]) == 1
def test_check():
	check(min_taps)
# Metadata Difficulty: Hard
# Metadata Topics: array,dynamic-programming,greedy
# Metadata Coverage: 100
