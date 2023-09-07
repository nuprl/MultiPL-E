from typing import List


def threeSumMulti(arr: List[int], target: int) -> int:
    """
    Given an integer array arr, and an integer target, return the number of tuples i, j, k such that i < j < k and arr[i] + arr[j] + arr[k] == target.
    As the answer can be very large, return it modulo 109 + 7.
 
    Example 1:

    Input: arr = [1,1,2,2,3,3,4,4,5,5], target = 8
    Output: 20
    Explanation: 
    Enumerating by the values (arr[i], arr[j], arr[k]):
    (1, 2, 5) occurs 8 times;
    (1, 3, 4) occurs 8 times;
    (2, 2, 4) occurs 2 times;
    (2, 3, 3) occurs 2 times.

    Example 2:

    Input: arr = [1,1,2,2,2,2], target = 5
    Output: 12
    Explanation: 
    arr[i] = 1, arr[j] = arr[k] = 2 occurs 12 times:
    We choose one 1 from [1,1] in 2 ways,
    and two 2s from [2,2,2,2] in 6 ways.

    Example 3:

    Input: arr = [2,1,3], target = 6
    Output: 1
    Explanation: (1, 2, 3) occured one time in the array so we return 1.

 
    Constraints:

    3 <= arr.length <= 3000
    0 <= arr[i] <= 100
    0 <= target <= 300

    """
    ### Canonical solution below ###
    MOD = 1000000007
    ans = 0

    arr.sort()
    n = len(arr)

    for i in range(n - 2):
        j, k = i + 1, n - 1
        while j < k:
            s = arr[i] + arr[j] + arr[k]
            if s > target:
                k -= 1
            elif s < target:
                j += 1
            else:
                if arr[j] != arr[k]:
                    left_count = right_count = 1

                    while j < n - 1 and arr[j] == arr[j + 1]:
                        left_count += 1
                        j += 1

                    while k > 0 and arr[k] == arr[k - 1]:
                        right_count += 1
                        k -= 1

                    ans += left_count * right_count
                    ans %= MOD
                    j += 1
                    k -= 1
                else:
                    ans += (k - j + 1) * (k - j) // 2
                    ans %= MOD
                    break

    return ans




### Unit tests below ###
def check(candidate):
	assert candidate([1,1,2,2,3,3,4,4,5,5], 8) == 20
	assert candidate([1,2,3,4,5,6,7,8,9,10], 100) == 0
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], -1) == 0
	assert candidate([1,1,2,2,2,2,3,3,4,4], 7) == 30
	assert candidate([1,1,1,1,1,1,1,1,1,1,1], 0) == 0
	assert candidate([1, 1, 2, 2, 3, 3, 4, 4, 5, 5], 8) == 20
def test_check():
	check(threeSumMulti)
# Metadata Difficulty: Medium
# Metadata Topics: array,hash-table,two-pointers,sorting,counting
# Metadata Coverage: 100
