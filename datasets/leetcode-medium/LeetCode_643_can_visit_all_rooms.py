from typing import List


def can_visit_all_rooms(rooms: List[List[int]]) -> bool:
    """
    There are n rooms labeled from 0 to n - 1 and all the rooms are locked except for room 0. Your goal is to visit all the rooms. However, you cannot enter a locked room without having its key.
    When you visit a room, you may find a set of distinct keys in it. Each key has a number on it, denoting which room it unlocks, and you can take all of them with you to unlock the other rooms.
    Given an array rooms where rooms[i] is the set of keys that you can obtain if you visited room i, return true if you can visit all the rooms, or false otherwise.
 
    Example 1:

    Input: rooms = [[1],[2],[3],[]]
    Output: true
    Explanation: 
    We visit room 0 and pick up key 1.
    We then visit room 1 and pick up key 2.
    We then visit room 2 and pick up key 3.
    We then visit room 3.
    Since we were able to visit every room, we return true.

    Example 2:

    Input: rooms = [[1,3],[3,0,1],[2],[0]]
    Output: false
    Explanation: We can not enter room number 2 since the only key that unlocks it is in that room.

 
    Constraints:

    n == rooms.length
    2 <= n <= 1000
    0 <= rooms[i].length <= 1000
    1 <= sum(rooms[i].length) <= 3000
    0 <= rooms[i][j] < n
    All the values of rooms[i] are unique.

    """
    ### Canonical solution below ###
    visited = set()
    stack = [0]

    while stack:
        current_room = stack.pop()

        visited.add(current_room)

        for key in rooms[current_room]:
            if key not in visited:
                stack.append(key)

    return len(visited) == len(rooms)




### Unit tests below ###
def check(candidate):
	assert candidate([[1],[2],[3],[4],[5],[6],[7],[8],[9],[0]]) == True
	assert candidate([[1,2,3,4,5,6,7,8,9,10],[],[],[],[],[],[],[],[],[],[0]]) == True
	assert candidate([[1],[0]]) == True
	assert candidate([[1],[2],[3],[4],[5],[6],[7],[8],[9],[10],[0]]) == True
	assert candidate([[1,2,3,4,5,6,7,8,9,10],[],[],[],[],[],[],[],[],[],[0,5,6,8,9,10]]) == True
	assert candidate(
    [[1,2,3,4,5,6,7,8,9,10],[],[],[],[],[],[],[],[],[],[0,1,2,3,4,5,6,7,8,9]]) == True
	assert candidate([[1,2,3,4,5,6,7,8,9],[10],[],[],[],[],[],[],[],[],[]]) == True
	assert candidate(
    [[1,3],[3,0,1],[2,5],[],[5,2,4],[],[],[],[],[],[],[0,1,2]]) == False
	assert candidate([[1,2,3,4,5,6,7,8,9,10],[],[],[],[],[],[],[],[],[],[0,1,2,3,4,5,6,7,8,9]]) == True
	assert candidate([[],[0],[]]) == False
	assert candidate([[1],[2],[3],[]]) == True
	assert candidate([[],[0,2,3,4,5,6,7,8,9],[1],[],[],[],[],[],[],[],[]]) == False
	assert candidate(
    [[1,3],[3,0,1],[2],[0]]) == False
	assert candidate([[1],[2,3],[3],[0,1]]) == True
	assert candidate(
    [[1,3],[3,0,1],[2,5],[2,5],[2,5],[2,5],[],[],[],[],[],[],[0,1,2]]) == False
	assert candidate([[1,3],[3,0,1],[2],[0]]) == False
	assert candidate([[1,3],[2],[],[]]) == True
	assert candidate([[1],[0,2],[1]]) == True
def test_check():
	check(can_visit_all_rooms)
# Metadata Difficulty: Medium
# Metadata Topics: depth-first-search,breadth-first-search,graph
# Metadata Coverage: 100
