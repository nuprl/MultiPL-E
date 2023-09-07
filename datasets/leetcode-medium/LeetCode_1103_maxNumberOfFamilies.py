from typing import List


def maxNumberOfFamilies(n: int, reservedSeats: List[List[int]]) -> int:
    """

    A cinema has n rows of seats, numbered from 1 to n and there are ten seats in each row, labelled from 1 to 10 as shown in the figure above.
    Given the array reservedSeats containing the numbers of seats already reserved, for example, reservedSeats[i] = [3,8] means the seat located in row 3 and labelled with 8 is already reserved.
    Return the maximum number of four-person groups you can assign on the cinema seats. A four-person group occupies four adjacent seats in one single row. Seats across an aisle (such as [3,3] and [3,4]) are not considered to be adjacent, but there is an exceptional case on which an aisle split a four-person group, in that case, the aisle split a four-person group in the middle, which means to have two people on each side.
 
    Example 1:


    Input: n = 3, reservedSeats = [[1,2],[1,3],[1,8],[2,6],[3,1],[3,10]]
    Output: 4
    Explanation: The figure above shows the optimal allocation for four groups, where seats mark with blue are already reserved and contiguous seats mark with orange are for one group.

    Example 2:

    Input: n = 2, reservedSeats = [[2,1],[1,8],[2,6]]
    Output: 2

    Example 3:

    Input: n = 4, reservedSeats = [[4,3],[1,4],[4,6],[1,7]]
    Output: 4

 
    Constraints:

    1 <= n <= 10^9
    1 <= reservedSeats.length <= min(10*n, 10^4)
    reservedSeats[i].length == 2
    1 <= reservedSeats[i][0] <= n
    1 <= reservedSeats[i][1] <= 10
    All reservedSeats[i] are distinct.

    """
    ### Canonical solution below ###
    rows = {}
    for seat in reservedSeats:
        rows[seat[0]] = rows.get(seat[0], 0) | (1 << (seat[1] - 1))

    max_groups = (n - len(rows)) * 2
    for row_mask in rows.values():
        seats = ~(row_mask | (row_mask >> 1) | (row_mask >> 2) | (row_mask >> 3)) & 0x3FF
        max_groups += (seats & (seats >> 1) & (seats >> 2) & (seats >> 3)) != 0

    return max_groups




### Unit tests below ###
def check(candidate):
	assert candidate(100000, []) == 200000
	assert candidate(2, [[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9],[1,10],[2,1],[2,2],[2,3],[2,4],[2,5],[2,6],[2,7],[2,8],[2,9],[2,10]]) == 0
	assert candidate(100000, [[k,7] for k in range(100000)]) == 0
	assert candidate(5, [[2,1],[2,2],[2,3],[2,4],[2,5],[2,6],[2,7],[2,8],[2,9],[2,10]]) == 8
	assert candidate(3, [[1,1],[2,2],[3,3]]) == 3
	assert candidate(1, [[1,1],[1,2],[1,3],[1,4],[1,5],[1,6],[1,7],[1,8],[1,9],[1,10]]) == 0
	assert candidate(2, [[2,1],[1,8],[2,6]]) == 2
	assert candidate(3, [[1,1],[1,3],[1,4],[2,1],[2,2],[2,3],[3,2],[3,6]]) == 3
	assert candidate(3, [[1,1],[2,2],[2,3],[2,4],[3,1]]) == 3
	assert candidate(1, []) == 2
def test_check():
	check(maxNumberOfFamilies)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,greedy,bit-manipulation
# Metadata Coverage: 100
