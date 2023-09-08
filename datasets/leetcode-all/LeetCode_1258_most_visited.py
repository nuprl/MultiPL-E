from typing import List


def most_visited(n: int, rounds: List[int]) -> List[int]:
    """
    Given an integer n and an integer array rounds. We have a circular track which consists of n sectors labeled from 1 to n. A marathon will be held on this track, the marathon consists of m rounds. The ith round starts at sector rounds[i - 1] and ends at sector rounds[i]. For example, round 1 starts at sector rounds[0] and ends at sector rounds[1]
    Return an array of the most visited sectors sorted in ascending order.
    Notice that you circulate the track in ascending order of sector numbers in the counter-clockwise direction (See the first example).
 
    Example 1:


    Input: n = 4, rounds = [1,3,1,2]
    Output: [1,2]
    Explanation: The marathon starts at sector 1. The order of the visited sectors is as follows:
    1 --> 2 --> 3 (end of round 1) --> 4 --> 1 (end of round 2) --> 2 (end of round 3 and the marathon)
    We can see that both sectors 1 and 2 are visited twice and they are the most visited sectors. Sectors 3 and 4 are visited only once.
    Example 2:

    Input: n = 2, rounds = [2,1,2,1,2,1,2,1,2]
    Output: [2]

    Example 3:

    Input: n = 7, rounds = [1,3,5,7]
    Output: [1,2,3,4,5,6,7]

 
    Constraints:

    2 <= n <= 100
    1 <= m <= 100
    rounds.length == m + 1
    1 <= rounds[i] <= n
    rounds[i] != rounds[i + 1] for 0 <= i < m

    """
    ### Canonical solution below ###
    visited = [0] * (n + 1)

    for i in range(1, len(rounds)):
        start, end = rounds[i - 1], rounds[i]
        while start != end:
            visited[start] += 1
            start = (start % n) + 1
    visited[rounds[-1]] += 1

    max_visits = max(visited)
    return [i for i in range(1, n + 1) if visited[i] == max_visits]




### Unit tests below ###
def check(candidate):
	assert candidate(2, [2, 1, 2, 1, 2, 1, 2, 1, 2]) == [2]
	assert candidate(5, [2, 1, 2, 1, 2, 1, 2, 1, 2]) == [2]
	assert candidate(7, [7, 7, 7, 7, 7, 7]) == [7]
	assert candidate(7, [1, 2, 3, 4, 5, 6, 7]) == [1, 2, 3, 4, 5, 6, 7]
	assert candidate(6, [1, 3, 5, 2, 4, 6]) == [1, 2, 3, 4, 5, 6]
	assert candidate(3, [1, 3, 1]) == [1]
	assert candidate(4, [1, 3, 1, 2]) == [1, 2]
	assert candidate(7, [1, 3, 5, 7]) == [1, 2, 3, 4, 5, 6, 7]
	assert candidate(6, [1, 2, 3, 4, 5, 6]) == [1, 2, 3, 4, 5, 6]
def test_check():
	check(most_visited)
# Metadata Difficulty: Easy
# Metadata Topics: array,simulation
# Metadata Coverage: 100
