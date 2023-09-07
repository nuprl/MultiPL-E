from typing import List


def find_latest_step(arr: List[int], m: int) -> int:
    """
    Given an array arr that represents a permutation of numbers from 1 to n.
    You have a binary string of size n that initially has all its bits set to zero. At each step i (assuming both the binary string and arr are 1-indexed) from 1 to n, the bit at position arr[i] is set to 1.
    You are also given an integer m. Find the latest step at which there exists a group of ones of length m. A group of ones is a contiguous substring of 1's such that it cannot be extended in either direction.
    Return the latest step at which there exists a group of ones of length exactly m. If no such group exists, return -1.
 
    Example 1:

    Input: arr = [3,5,1,2,4], m = 1
    Output: 4
    Explanation: 
    Step 1: "00100", groups: ["1"]
    Step 2: "00101", groups: ["1", "1"]
    Step 3: "10101", groups: ["1", "1", "1"]
    Step 4: "11101", groups: ["111", "1"]
    Step 5: "11111", groups: ["11111"]
    The latest step at which there exists a group of size 1 is step 4.

    Example 2:

    Input: arr = [3,1,5,4,2], m = 2
    Output: -1
    Explanation: 
    Step 1: "00100", groups: ["1"]
    Step 2: "10100", groups: ["1", "1"]
    Step 3: "10101", groups: ["1", "1", "1"]
    Step 4: "10111", groups: ["1", "111"]
    Step 5: "11111", groups: ["11111"]
    No group of size 2 exists during any step.

 
    Constraints:

    n == arr.length
    1 <= m <= n <= 105
    1 <= arr[i] <= n
    All integers in arr are distinct.

    """
    ### Canonical solution below ###
    n = len(arr)
    length_left, length_right = [0] * (n + 2), [0] * (n + 2)
    count, result = 0, -1

    for i, pos in enumerate(arr):
        left_length = length_right[pos - 1]
        right_length = length_left[pos + 1]
        new_length = left_length + right_length + 1

        if left_length == m or right_length == m:
            count -= 1

        if new_length == m:
            count += 1

        if new_length > 0:
            length_left[pos - left_length] = new_length
            length_right[pos + right_length] = new_length
            result = i + 1

    return result if count > 0 else -1




### Unit tests below ###
def check(candidate):
	assert candidate([2,1,4,3,5], 1) == -1
	assert candidate(
    [4, 3, 2, 1, 5, 6, 7, 8, 9, 10],
    3,
) == -1
	assert candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 10) == 10
	assert candidate(
    [5, 4, 3, 2, 1, 6], 1
) == -1
	assert candidate(
    [4, 3, 2, 1, 5, 6, 7, 8, 9, 10],
    7,
) == -1
	assert candidate([3,5,1,2,4], 2) == -1
	assert candidate(
    [4, 3, 2, 1, 5, 6, 7, 8, 9, 10],
    4,
) == -1
	assert candidate(
    [6, 5, 1, 4, 3, 2], 1
) == -1
	assert candidate([5,3,1,2,4], 2) == -1
	assert candidate(
    [4, 3, 2, 1, 5, 6, 7, 8, 9, 10],
    2,
) == -1
	assert candidate(
    [4, 3, 2, 1, 5, 6, 7, 8, 9, 10],
    6,
) == -1
	assert candidate([3,5,1,2,4], 5) == 5
	assert candidate([1,2,3,4,5], 5) == 5
	assert candidate([2,1,4,3,5], 5) == 5
	assert candidate(
    [4, 3, 2, 1, 5, 6, 7, 8, 9, 10],
    8,
) == -1
	assert candidate(
    [1, 2, 3, 4, 5, 6], 1
) == -1
	assert candidate(
    [5, 4, 3, 2, 6, 1], 1
) == -1
	assert candidate(
    [6, 5, 4, 3, 1, 2], 1
) == -1
	assert candidate([5,4,3,2,1], 5) == 5
	assert candidate(
    [4, 6, 1, 3, 2, 5], 1
) == -1
	assert candidate(
    [3, 2, 4, 6, 5, 1], 1
) == -1
def test_check():
	check(find_latest_step)
# Metadata Difficulty: Medium
# Metadata Topics: array,binary-search,simulation
# Metadata Coverage: 100
