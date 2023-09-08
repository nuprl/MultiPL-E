from typing import List


def finding_users_active_minutes(logs: List[List[int]], k: int) -> List[int]:
    """
    You are given the logs for users' actions on LeetCode, and an integer k. The logs are represented by a 2D integer array logs where each logs[i] = [IDi, timei] indicates that the user with IDi performed an action at the minute timei.
    Multiple users can perform actions simultaneously, and a single user can perform multiple actions in the same minute.
    The user active minutes (UAM) for a given user is defined as the number of unique minutes in which the user performed an action on LeetCode. A minute can only be counted once, even if multiple actions occur during it.
    You are to calculate a 1-indexed array answer of size k such that, for each j (1 <= j <= k), answer[j] is the number of users whose UAM equals j.
    Return the array answer as described above.
 
    Example 1:

    Input: logs = [[0,5],[1,2],[0,2],[0,5],[1,3]], k = 5
    Output: [0,2,0,0,0]
    Explanation:
    The user with ID=0 performed actions at minutes 5, 2, and 5 again. Hence, they have a UAM of 2 (minute 5 is only counted once).
    The user with ID=1 performed actions at minutes 2 and 3. Hence, they have a UAM of 2.
    Since both users have a UAM of 2, answer[2] is 2, and the remaining answer[j] values are 0.

    Example 2:

    Input: logs = [[1,1],[2,2],[2,3]], k = 4
    Output: [1,1,0,0]
    Explanation:
    The user with ID=1 performed a single action at minute 1. Hence, they have a UAM of 1.
    The user with ID=2 performed actions at minutes 2 and 3. Hence, they have a UAM of 2.
    There is one user with a UAM of 1 and one with a UAM of 2.
    Hence, answer[1] = 1, answer[2] = 1, and the remaining values are 0.

 
    Constraints:

    1 <= logs.length <= 104
    0 <= IDi <= 109
    1 <= timei <= 105
    k is in the range [The maximum UAM for a user, 105].

    """
    ### Canonical solution below ###
    from collections import defaultdict
    user_minutes = defaultdict(set)
    for log in logs:
        user_minutes[log[0]].add(log[1])
    result = [0] * k
    for minutes in user_minutes.values():
        if len(minutes) <= k:
            result[len(minutes) - 1] += 1
    return result




### Unit tests below ###
def check(candidate):
	assert candidate([[1,3],[2,3],[3,3],[4,3]], 4) == [4,0,0,0]
	assert candidate([[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7]], 7) == [0,0,0,0,0,0,1]
	assert candidate([[1,1],[1,2],[2,2],[2,3]], 4) == [0,2,0,0]
	assert candidate([[1,2],[2,2],[3,3],[4,3]], 4) == [4,0,0,0]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[1,5]], 5) == [3,1,0,0,0]
	assert candidate([[1,2],[2,2],[3,3]], 4) == [3,0,0,0]
	assert candidate([[1,1],[2,2],[2,3]], 4) == [1,1,0,0]
	assert candidate([[1,1],[1,2],[1,3],[1,4]], 4) == [0,0,0,1]
	assert candidate([[1,1],[1,2],[1,3],[1,4],[1,5]], 5) == [0,0,0,0,1]
	assert candidate([[1,2],[2,2],[3,2]], 4) == [3,0,0,0]
	assert candidate([[0,5],[1,2],[0,2],[0,5],[1,3]], 5) == [0,2,0,0,0]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5],[6,6],[7,7],[8,8],[9,9],[10,10]], 10) == [10,0,0,0,0,0,0,0,0,0]
	assert candidate([[1,1],[1,10],[1,20],[1,30],[1,40]], 5) == [0,0,0,0,1]
	assert candidate([[1,1],[1,2],[1,3]], 4) == [0,0,1,0]
	assert candidate([[1,1],[2,2],[3,3],[4,4],[5,5]], 5) == [5,0,0,0,0]
	assert candidate([[1,1],[2,2],[3,3],[4,4]], 4) == [4,0,0,0]
def test_check():
	check(finding_users_active_minutes)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table
# Metadata Coverage: 100
