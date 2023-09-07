from typing import List


def kthLargestNumber(nums: List[str], k: int) -> str:
    """
    You are given an array of strings nums and an integer k. Each string in nums represents an integer without leading zeros.
    Return the string that represents the kth largest integer in nums.
    Note: Duplicate numbers should be counted distinctly. For example, if nums is ["1","2","2"], "2" is the first largest integer, "2" is the second-largest integer, and "1" is the third-largest integer.
 
    Example 1:

    Input: nums = ["3","6","7","10"], k = 4
    Output: "3"
    Explanation:
    The numbers in nums sorted in non-decreasing order are ["3","6","7","10"].
    The 4th largest integer in nums is "3".

    Example 2:

    Input: nums = ["2","21","12","1"], k = 3
    Output: "2"
    Explanation:
    The numbers in nums sorted in non-decreasing order are ["1","2","12","21"].
    The 3rd largest integer in nums is "2".

    Example 3:

    Input: nums = ["0","0"], k = 2
    Output: "0"
    Explanation:
    The numbers in nums sorted in non-decreasing order are ["0","0"].
    The 2nd largest integer in nums is "0".

 
    Constraints:

    1 <= k <= nums.length <= 104
    1 <= nums[i].length <= 100
    nums[i] consists of only digits.
    nums[i] will not have any leading zeros.

    """
    ### Canonical solution below ###
    nums.sort(key=lambda x: (len(x), x))
    return nums[-k]




### Unit tests below ###
def check(candidate):
	assert candidate(["10", "10", "10"], 1) == "10"
	assert candidate(["1", "1", "2", "2", "2", "2", "2"], 1) == "2"
	assert candidate(["3", "3", "3", "3"], 2) == "3"
	assert candidate(["10", "10", "10"], 3) == "10"
	assert candidate(["0", "0"], 1) == "0"
	assert candidate(["1", "1", "1", "1", "1", "3", "2"], 3) == "1"
	assert candidate(["100", "100", "99"], 2) == "100"
	assert candidate(["10"], 1) == "10"
	assert candidate(["100", "100", "100"], 3) == "100"
	assert candidate(["100", "100", "100"], 1) == "100"
	assert candidate(["5", "4", "3", "2", "1"], 1) == "5"
	assert candidate(["21", "12", "10", "1"], 4) == "1"
	assert candidate(["0", "0"], 2) == "0"
	assert candidate(["2", "2", "2", "2"], 2) == "2"
	assert candidate(["1", "1", "2", "2", "2", "2", "3"], 1) == "3"
	assert candidate(["1", "1", "1", "1", "1", "3", "2"], 1) == "3"
	assert candidate(["100", "100", "99"], 3) == "99"
	assert candidate(["3", "6", "7", "10"], 2) == "7"
	assert candidate(["3", "6", "7", "10"], 3) == "6"
	assert candidate(["3", "3", "3", "3"], 4) == "3"
	assert candidate(["1", "1", "2", "2", "2", "2", "3"], 5) == "2"
	assert candidate(["0"], 1) == "0"
	assert candidate(["1", "2", "2", "2", "2"], 3) == "2"
	assert candidate(["3", "6", "7", "10"], 4) == "3"
	assert candidate(["100"], 1) == "100"
	assert candidate(["1", "1", "2", "2", "2", "2", "3"], 7) == "1"
	assert candidate(["1", "1", "1", "1", "1", "1", "2"], 1) == "2"
	assert candidate(["1", "1", "2", "2", "2", "2", "2"], 4) == "2"
	assert candidate(["21", "12"], 1) == "21"
	assert candidate(["1", "1", "1", "1", "1", "3", "2"], 6) == "1"
	assert candidate(["10", "10", "10"], 2) == "10"
	assert candidate(["21", "10", "9", "10"], 3) == "10"
	assert candidate(["21", "10", "9", "10"], 2) == "10"
	assert candidate(["1", "1", "2", "2", "2", "2", "3"], 6) == "1"
	assert candidate(["12", "12", "12"], 3) == "12"
	assert candidate(["1", "1", "1", "1", "1", "3", "2"], 2) == "2"
	assert candidate(["3", "6", "7", "10"], 1) == "10"
	assert candidate(["21", "10", "9", "10"], 1) == "21"
	assert candidate(["2", "2", "2", "2"], 4) == "2"
	assert candidate(["1"], 1) == "1"
	assert candidate(["21", "12", "1"], 2) == "12"
	assert candidate(["100", "100", "99"], 1) == "100"
	assert candidate(["21", "10", "9", "10"], 4) == "9"
	assert candidate(["3", "3", "3", "3"], 1) == "3"
def test_check():
	check(kthLargestNumber)
# Metadata Difficulty: Medium
# Metadata Topics: array,string,divide-and-conquer,sorting,heap-priority-queue,quickselect
# Metadata Coverage: 100
