from typing import List


def shortestPathAllKeys(grid: List[str]) -> int:
    """
    You are given an m x n grid grid where:

    '.' is an empty cell.
    '#' is a wall.
    '@' is the starting point.
    Lowercase letters represent keys.
    Uppercase letters represent locks.

    You start at the starting point and one move consists of walking one space in one of the four cardinal directions. You cannot walk outside the grid, or walk into a wall.
    If you walk over a key, you can pick it up and you cannot walk over a lock unless you have its corresponding key.
    For some 1 <= k <= 6, there is exactly one lowercase and one uppercase letter of the first k letters of the English alphabet in the grid. This means that there is exactly one key for each lock, and one lock for each key; and also that the letters used to represent the keys and locks were chosen in the same order as the English alphabet.
    Return the lowest number of moves to acquire all keys. If it is impossible, return -1.
 
    Example 1:


    Input: grid = ["@.a..","###.#","b.A.B"]
    Output: 8
    Explanation: Note that the goal is to obtain all the keys not to open all the locks.

    Example 2:


    Input: grid = ["@..aA","..B#.","....b"]
    Output: 6

    Example 3:


    Input: grid = ["@Aa"]
    Output: -1

 
    Constraints:

    m == grid.length
    n == grid[i].length
    1 <= m, n <= 30
    grid[i][j] is either an English letter, '.', '#', or '@'. 
    There is exactly one '@' in the grid.
    The number of keys in the grid is in the range [1, 6].
    Each key in the grid is unique.
    Each key in the grid has a matching lock.

    """
    ### Canonical solution below ###
    from collections import deque
    m, n, steps, k, x, y, mask = len(grid), len(grid[0]), 0, 0, -1, -1, 0

    for i in range(m):
        for j in range(n):
            if grid[i][j] == '@':
                x, y = i, j
            elif 'a' <= grid[i][j] <= 'f':
                k = max(k, ord(grid[i][j]) - ord('a') + 1)

    q = deque([(x, y, 0)])
    visited = {(x, y, mask)}

    dirs = [(-1, 0), (1, 0), (0, 1), (0, -1)]

    while q:
        qs = len(q)
        for sz in range(qs):
            x, y, mask = q.popleft()

            if mask == (1 << k) - 1:
                return steps

            for dx, dy in dirs:
                nx, ny, nmask = x + dx, y + dy, mask

                if 0 <= nx < m and 0 <= ny < n:
                    c = grid[nx][ny]
                    if 'A' <= c <= 'F' and not nmask & (1 << (ord(c) - ord('A'))):
                        continue
                    if 'a' <= c <= 'f':
                        nmask |= (1 << (ord(c) - ord('a')))

                    if (nx, ny, nmask) in visited:
                        continue

                    visited.add((nx, ny, nmask))
                    q.append((nx, ny, nmask))

        steps += 1

    return -1




### Unit tests below ###
def check(candidate):
	assert candidate([
    "@...a",
    ".###A",
    "b.BCc"
]) == 10
	assert candidate([
    "@.a.#",
    "###.#",
    "b..Bb"
]) == 6
	assert candidate([
    "@..aA",
    "..B#.",
    "....b"
]) == 6
	assert candidate(["@Aa"]

                           ) == -1
	assert candidate([
    "@...a",
    ".###A",
    "b.BCc",
    ".###.",
    "....."
]) == 10
	assert candidate([
    "@..aA",
    ".##.#A",
    "b.BCc"
]) == 10
def test_check():
	check(shortestPathAllKeys)
# Metadata Difficulty: Hard
# Metadata Topics: array,bit-manipulation,breadth-first-search,matrix
# Metadata Coverage: 100
