from typing import List


def prisonAfterNDays(cells: List[int], n: int) -> List[int]:
    """
    There are 8 prison cells in a row and each cell is either occupied or vacant.
    Each day, whether the cell is occupied or vacant changes according to the following rules:

    If a cell has two adjacent neighbors that are both occupied or both vacant, then the cell becomes occupied.
    Otherwise, it becomes vacant.

    Note that because the prison is a row, the first and the last cells in the row can't have two adjacent neighbors.
    You are given an integer array cells where cells[i] == 1 if the ith cell is occupied and cells[i] == 0 if the ith cell is vacant, and you are given an integer n.
    Return the state of the prison after n days (i.e., n such changes described above).
 
    Example 1:

    Input: cells = [0,1,0,1,1,0,0,1], n = 7
    Output: [0,0,1,1,0,0,0,0]
    Explanation: The following table summarizes the state of the prison on each day:
    Day 0: [0, 1, 0, 1, 1, 0, 0, 1]
    Day 1: [0, 1, 1, 0, 0, 0, 0, 0]
    Day 2: [0, 0, 0, 0, 1, 1, 1, 0]
    Day 3: [0, 1, 1, 0, 0, 1, 0, 0]
    Day 4: [0, 0, 0, 0, 0, 1, 0, 0]
    Day 5: [0, 1, 1, 1, 0, 1, 0, 0]
    Day 6: [0, 0, 1, 0, 1, 1, 0, 0]
    Day 7: [0, 0, 1, 1, 0, 0, 0, 0]

    Example 2:

    Input: cells = [1,0,0,1,0,0,1,0], n = 1000000000
    Output: [0,0,1,1,1,1,1,0]

 
    Constraints:

    cells.length == 8
    cells[i] is either 0 or 1.
    1 <= n <= 109

    """
    ### Canonical solution below ###
    n = n % 14 if n % 14 != 0 else 14  # Pattern repeats every 14 days

    for _ in range(n):
        temp = [0] * 8
        for i in range(1, 7):
            temp[i] = int(cells[i - 1] == cells[i + 1])
        cells = temp

    return cells




### Unit tests below ###
def check(candidate):
	assert candidate([1,0,1,0,1,0,1,0], 7) == [0,0,0,0,0,0,0,0]
	assert candidate([0,1,0,1,1,0,0,1], 7) == [0,0,1,1,0,0,0,0]
	assert candidate([1,0,1,0,1,0,1,0], 14) == [0,0,0,0,0,0,0,0]
	assert candidate(
    [1,0,1,0,1,0,1,0], 77) == [0,0,0,0,0,0,0,0]
	assert candidate(
    [0,1,0,1,1,0,0,1], 7) == [0,0,1,1,0,0,0,0]
	assert candidate([0,0,0,0,0,1,0,0], 14) == [0,0,0,0,0,1,0,0]
def test_check():
	check(prisonAfterNDays)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,math,bit-manipulation
# Metadata Coverage: 100
