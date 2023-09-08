from typing import List


def min_sessions(tasks: List[int], session_time: int) -> int:
    """
    There are n tasks assigned to you. The task times are represented as an integer array tasks of length n, where the ith task takes tasks[i] hours to finish. A work session is when you work for at most sessionTime consecutive hours and then take a break.
    You should finish the given tasks in a way that satisfies the following conditions:

    If you start a task in a work session, you must complete it in the same work session.
    You can start a new task immediately after finishing the previous one.
    You may complete the tasks in any order.

    Given tasks and sessionTime, return the minimum number of work sessions needed to finish all the tasks following the conditions above.
    The tests are generated such that sessionTime is greater than or equal to the maximum element in tasks[i].
 
    Example 1:

    Input: tasks = [1,2,3], sessionTime = 3
    Output: 2
    Explanation: You can finish the tasks in two work sessions.
    - First work session: finish the first and the second tasks in 1 + 2 = 3 hours.
    - Second work session: finish the third task in 3 hours.

    Example 2:

    Input: tasks = [3,1,3,1,1], sessionTime = 8
    Output: 2
    Explanation: You can finish the tasks in two work sessions.
    - First work session: finish all the tasks except the last one in 3 + 1 + 3 + 1 = 8 hours.
    - Second work session: finish the last task in 1 hour.

    Example 3:

    Input: tasks = [1,2,3,4,5], sessionTime = 15
    Output: 1
    Explanation: You can finish all the tasks in one work session.

 
    Constraints:

    n == tasks.length
    1 <= n <= 14
    1 <= tasks[i] <= 10
    max(tasks[i]) <= sessionTime <= 15

    """
    ### Canonical solution below ###
    sessions = []
    tasks.sort(reverse=True)

    for task in tasks:
        added = False
        for session_idx, session in enumerate(sessions):
            if session + task <= session_time:
                sessions[session_idx] += task
                added = True
                break

        if not added:
            sessions.append(task)

    return len(sessions)




### Unit tests below ###
def check(candidate):
	assert candidate([5, 5, 5, 5], 10) == 2
	assert candidate([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 2) == 5
	assert candidate([1, 1, 1, 1, 1], 10) == 1
	assert candidate([10, 9, 8, 7, 6, 5, 4, 3, 2, 1], 11) == 5
	assert candidate([3, 2, 1], 4) == 2
	assert candidate([3, 3, 3, 3, 3], 8) == 3
	assert candidate([1, 2, 3], 7) == 1
	assert candidate([4, 4, 4, 4, 4], 3) == 5
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9], 15) == 3
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9], 1) == 9
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9], 10) == 5
	assert candidate([2, 3, 4, 5, 6, 7, 8, 9], 10) == 5
	assert candidate([4, 4, 4], 4) == 3
	assert candidate([2, 3, 4, 5, 6], 1) == 5
	assert candidate([10, 10, 10, 10, 10], 30) == 2
	assert candidate([7, 5, 6, 1], 12) == 2
	assert candidate([9, 8, 7, 6, 5, 4, 3, 2, 1], 10) == 5
	assert candidate([5, 6, 5], 10) == 2
	assert candidate([1, 2, 3, 4, 5], 5) == 3
	assert candidate([2, 3, 4, 5], 7) == 2
	assert candidate([1, 2, 3], 6) == 1
	assert candidate([1, 1, 1, 1, 1], 1) == 5
	assert candidate([1, 2, 3, 4, 5], 15) == 1
	assert candidate([2, 4, 6, 8, 10], 15) == 3
	assert candidate([1, 2, 3, 4, 5, 6], 7) == 3
	assert candidate([1, 1, 1, 1, 1], 2) == 3
	assert candidate([3, 1, 2], 3) == 2
def test_check():
	check(min_sessions)
# Metadata Difficulty: Medium
# Metadata Topics: array,dynamic-programming,backtracking,bit-manipulation,bitmask
# Metadata Coverage: 100
