from typing import List


def least_interval(tasks: List[str], n: int) -> int:
    """
    Given a characters array tasks, representing the tasks a CPU needs to do, where each letter represents a different task. Tasks could be done in any order. Each task is done in one unit of time. For each unit of time, the CPU could complete either one task or just be idle.
    However, there is a non-negative integer n that represents the cooldown period between two same tasks (the same letter in the array), that is that there must be at least n units of time between any two same tasks.
    Return the least number of units of times that the CPU will take to finish all the given tasks.
 
    Example 1:

    Input: tasks = ["A","A","A","B","B","B"], n = 2
    Output: 8
    Explanation: 
    A -> B -> idle -> A -> B -> idle -> A -> B
    There is at least 2 units of time between any two same tasks.

    Example 2:

    Input: tasks = ["A","A","A","B","B","B"], n = 0
    Output: 6
    Explanation: On this case any permutation of size 6 would work since n = 0.
    ["A","A","A","B","B","B"]
    ["A","B","A","B","A","B"]
    ["B","B","B","A","A","A"]
    ...
    And so on.

    Example 3:

    Input: tasks = ["A","A","A","A","A","A","B","C","D","E","F","G"], n = 2
    Output: 16
    Explanation: 
    One possible solution is
    A -> B -> C -> A -> D -> E -> A -> F -> G -> A -> idle -> idle -> A -> idle -> idle -> A

 
    Constraints:

    1 <= task.length <= 104
    tasks[i] is upper-case English letter.
    The integer n is in the range [0, 100].

    """
    ### Canonical solution below ###
    from collections import Counter
    task_freq = Counter(tasks)

    max_f = max(task_freq.values())
    max_count = sum(1 for count in task_freq.values() if count == max_f)

    return max(len(tasks), (max_f - 1) * (n + 1) + max_count)




### Unit tests below ###
def check(candidate):
	assert candidate(["A", "A", "A", "B", "B", "B", "C", "C", "C"], 1) == 9
	assert candidate(["A", "A", "A", "B", "B", "B"], 2) == 8
	assert candidate(["A", "A", "B", "B", "C", "C"], 0) == 6
	assert candidate(["A", "A", "B", "B", "C", "C"], 1) == 6
	assert candidate(["A", "A", "A", "A", "A", "A", "B", "C", "D", "E", "F", "G"], 2) == 16
	assert candidate(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], 0) == 26
	assert candidate(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], 1) == 26
	assert candidate(["A", "A", "A", "B", "B", "B"], 0) == 6
	assert candidate(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"], 2) == 26
	assert candidate(["A"], 0) == 1
	assert candidate(["A", "A", "A", "B", "B", "C", "C", "D", "D", "E", "E"], 2) == 11
	assert candidate(["A", "A", "B", "B", "C", "C"], 3) == 7
def test_check():
	check(least_interval)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,sorting,heap-priority-queue,counting
# Metadata Coverage: 100
