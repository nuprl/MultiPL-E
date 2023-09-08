from typing import List


def max_events(events: List[List[int]]) -> int:
    """
    You are given an array of events where events[i] = [startDayi, endDayi]. Every event i starts at startDayi and ends at endDayi.
    You can attend an event i at any day d where startTimei <= d <= endTimei. You can only attend one event at any time d.
    Return the maximum number of events you can attend.
 
    Example 1:


    Input: events = [[1,2],[2,3],[3,4]]
    Output: 3
    Explanation: You can attend all the three events.
    One way to attend them all is as shown.
    Attend the first event on day 1.
    Attend the second event on day 2.
    Attend the third event on day 3.

    Example 2:

    Input: events= [[1,2],[2,3],[3,4],[1,2]]
    Output: 4

 
    Constraints:

    1 <= events.length <= 105
    events[i].length == 2
    1 <= startDayi <= endDayi <= 105

    """
    ### Canonical solution below ###
    events.sort(key=lambda x: x[1])

    count = 0
    last_day = -1

    for event in events:
        if event[0] > last_day:
            count += 1
            last_day = event[1]

    return count




### Unit tests below ###
def check(candidate):
	assert candidate([[1,4],[2,3],[4,5]]) == 2
	assert candidate([[1,6],[2,3],[4,5]]) == 2
	assert candidate(
    [[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2],[1,2]]
) == 1
	assert candidate([[1,5],[2,3],[4,5]]) == 2
	assert candidate([[1,2],[3,4],[5,6]]) == 3
def test_check():
	check(max_events)
# Metadata Difficulty: Medium
# Metadata Topics: array,greedy,sorting,heap-priority-queue
# Metadata Coverage: 100
