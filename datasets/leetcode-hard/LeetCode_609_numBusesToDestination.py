from typing import List


def numBusesToDestination(routes: List[List[int]], source: int, target: int) -> int:
    """
    You are given an array routes representing bus routes where routes[i] is a bus route that the ith bus repeats forever.

    For example, if routes[0] = [1, 5, 7], this means that the 0th bus travels in the sequence 1 -> 5 -> 7 -> 1 -> 5 -> 7 -> 1 -> ... forever.

    You will start at the bus stop source (You are not on any bus initially), and you want to go to the bus stop target. You can travel between bus stops by buses only.
    Return the least number of buses you must take to travel from source to target. Return -1 if it is not possible.
 
    Example 1:

    Input: routes = [[1,2,7],[3,6,7]], source = 1, target = 6
    Output: 2
    Explanation: The best strategy is take the first bus to the bus stop 7, then take the second bus to the bus stop 6.

    Example 2:

    Input: routes = [[7,12],[4,5,15],[6],[15,19],[9,12,13]], source = 15, target = 12
    Output: -1

 
    Constraints:

    1 <= routes.length <= 500.
    1 <= routes[i].length <= 105
    All the values of routes[i] are unique.
    sum(routes[i].length) <= 105
    0 <= routes[i][j] < 106
    0 <= source, target < 106

    """
    ### Canonical solution below ###
    from collections import defaultdict
    from queue import Queue
    if source == target:
        return 0

    stop_to_buses = defaultdict(set)
    for i, route in enumerate(routes):
        for stop in route:
            stop_to_buses[stop].add(i)

    q = Queue()
    visited_buses = set()
    num_buses = 0
    q.put(source)

    while not q.empty():
        size = q.qsize()
        for _ in range(size):
            stop = q.get()
            for bus in stop_to_buses[stop]:
                if bus in visited_buses:
                    continue
                visited_buses.add(bus)
                for next_stop in routes[bus]:
                    if next_stop == target:
                        return num_buses + 1
                    q.put(next_stop)
        num_buses += 1

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 6], [6, 7]], 1, 7) == 5
	assert candidate([[1, 2], [3, 4], [5, 6], [7, 8]], 1, 8) == -1
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]], 1, 4) == 3
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5]], 1, 5) == 4
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6]], 1, 6) == 5
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6]], 1, 8) == -1
	assert candidate([[1, 2], [2, 3], [3, 4], [6, 7], [9, 10], [9, 11], [10, 12]], 1, 12) == -1
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]], 1, 2) == 1
	assert candidate([[1, 2], [2, 3], [3, 4], [5, 6], [6, 7], [8, 9]], 1, 8) == -1
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]], 1, 7) == 6
	assert candidate([[1, 2, 3, 4, 5]], 1, 5) == 1
	assert candidate([[1, 2], [2, 3], [3, 4], [6, 7]], 1, 7) == -1
	assert candidate([[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 7]], 2, 5) == 3
	assert candidate([[1, 2, 3], [3, 6, 7], [5, 7, 8]], 1, 1) == 0
	assert candidate([[1, 2], [1, 3], [1, 4], [1, 5], [1, 6]], 1, 6) == 1
	assert candidate([[1, 2, 7], [3, 6, 7], [5, 7, 8]], 1, 8) == 2
def test_check():
	check(numBusesToDestination)
# Metadata Difficulty: Hard
# Metadata Topics: array,hash-table,breadth-first-search
# Metadata Coverage: 100
