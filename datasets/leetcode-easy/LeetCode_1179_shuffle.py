from typing import Union, List


def shuffle(nums: List[Union[int, str]], n: int) -> List[Union[int, str]]:
    """
    Given the array nums consisting of 2n elements in the form [x1,x2,...,xn,y1,y2,...,yn].
    Return the array in the form [x1,y1,x2,y2,...,xn,yn].
 
    Example 1:

    Input: nums = [2,5,1,3,4,7], n = 3
    Output: [2,3,5,4,1,7] 
    Explanation: Since x1=2, x2=5, x3=1, y1=3, y2=4, y3=7 then the answer is [2,3,5,4,1,7].

    Example 2:

    Input: nums = [1,2,3,4,4,3,2,1], n = 4
    Output: [1,4,2,3,3,2,4,1]

    Example 3:

    Input: nums = [1,1,2,2], n = 2
    Output: [1,2,1,2]

 
    Constraints:

    1 <= n <= 500
    nums.length == 2n
    1 <= nums[i] <= 10^3
    """
    ### Canonical solution below ###
    shuffled = []
    for i in range(n):
        shuffled.append(nums[i])
        shuffled.append(nums[i+n])
    return shuffled




### Unit tests below ###
def check(candidate):
	assert candidate([1,2,3,4,5,6,7,8,9,10], 5) == [1,6,2,7,3,8,4,9,5,10]
	assert candidate([1,1,1,1,1,1,1,1,1,1], 5) == [1,1,1,1,1,1,1,1,1,1]
	assert candidate(["a", "b"], 1) == ["a", "b"]
	assert candidate(["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t"], 10) == ["a","k","b","l","c","m","d","n","e","o","f","p","g","q","h","r","i","s","j","t"]
	assert candidate([10,9,8,7,6,5,4,3,2,1], 5) == [10,5,9,4,8,3,7,2,6,1]
	assert candidate([1,2,3,4,5,5,4,3,2,1], 5) == [1,5,2,4,3,3,4,2,5,1]
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12], 6) == [1,7,2,8,3,9,4,10,5,11,6,12]
	assert candidate([1,3,5,7,9,2,4,6,8,10], 5) == [1,2,3,4,5,6,7,8,9,10]
	assert candidate(["a","b","c","d"], 2) == ["a","c","b","d"]
	assert candidate([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20], 10) == [1,11,2,12,3,13,4,14,5,15,6,16,7,17,8,18,9,19,10,20]
	assert candidate(["a","b"], 1) == ["a","b"]
def test_check():
	check(shuffle)
# Metadata Difficulty: Easy
# Metadata Topics: array
# Metadata Coverage: 100
