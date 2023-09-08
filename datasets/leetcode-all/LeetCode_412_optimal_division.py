from typing import List


def optimal_division(nums: List[int]) -> str:
    """
    You are given an integer array nums. The adjacent integers in nums will perform the float division.

    For example, for nums = [2,3,4], we will evaluate the expression "2/3/4".

    However, you can add any number of parenthesis at any position to change the priority of operations. You want to add these parentheses such the value of the expression after the evaluation is maximum.
    Return the corresponding expression that has the maximum value in string format.
    Note: your expression should not contain redundant parenthesis.
 
    Example 1:

    Input: nums = [1000,100,10,2]
    Output: "1000/(100/10/2)"
    Explanation: 1000/(100/10/2) = 1000/((100/10)/2) = 200
    However, the bold parenthesis in "1000/((100/10)/2)" are redundant since they do not influence the operation priority.
    So you should return "1000/(100/10/2)".
    Other cases:
    1000/(100/10)/2 = 50
    1000/(100/(10/2)) = 50
    1000/100/10/2 = 0.5
    1000/100/(10/2) = 2

    Example 2:

    Input: nums = [2,3,4]
    Output: "2/(3/4)"
    Explanation: (2/(3/4)) = 8/3 = 2.667
    It can be shown that after trying all possibilities, we cannot get an expression with evaluation greater than 2.667

 
    Constraints:

    1 <= nums.length <= 10
    2 <= nums[i] <= 1000
    There is only one optimal division for the given input.

    """
    ### Canonical solution below ###
    n = len(nums)
    if n == 1:
        return str(nums[0])
    if n == 2:
        return str(nums[0]) + '/' + str(nums[1])
    res = str(nums[0]) + '/('
    for i in range(1, n - 1):
        res += str(nums[i]) + '/'
    res += str(nums[n - 1]) + ')'
    return res




### Unit tests below ###
def check(candidate):
	assert candidate([2,2,2,2,2,2,2,2,2,2,2]) == "2/(2/2/2/2/2/2/2/2/2/2)"
	assert candidate([1000,500,250,125,62]) == "1000/(500/250/125/62)"
	assert candidate([200,100,50,25]) == "200/(100/50/25)"
	assert candidate([2,2,2,2,2,2,2,2,2,2]) == "2/(2/2/2/2/2/2/2/2/2)"
	assert candidate([2000,1000,1000,500,250,125,62]) == "2000/(1000/1000/500/250/125/62)"
	assert candidate([500,30,6,2]) == "500/(30/6/2)"
	assert candidate([100,100,100]) == "100/(100/100)"
	assert candidate([100,10,2,2,2]) == "100/(10/2/2/2)"
	assert candidate([300,100,33,11,3]) == "300/(100/33/11/3)"
	assert candidate([1000,100,10,2,1]) == "1000/(100/10/2/1)"
	assert candidate([1000,100,10,2]) == "1000/(100/10/2)"
	assert candidate([5]) == "5"
	assert candidate([3,3,3,3]) == "3/(3/3/3)"
	assert candidate([20,10]) == "20/10"
	assert candidate([50,2,2]) == "50/(2/2)"
	assert candidate([2,3,4]) == "2/(3/4)"
	assert candidate([700,222,111,33,55,20]) == "700/(222/111/33/55/20)"
	assert candidate([100,50,62,12,5]) == "100/(50/62/12/5)"
	assert candidate([100,10,5,2]) == "100/(10/5/2)"
	assert candidate([10000000,100,10,2]) == "10000000/(100/10/2)"
	assert candidate([10,20,30,40,50]) == "10/(20/30/40/50)"
	assert candidate([100,2,2,2]) == "100/(2/2/2)"
	assert candidate([1,2,3,4,5]) == "1/(2/3/4/5)"
	assert candidate([9,3]) == "9/3"
	assert candidate([200,100,50,25,12]) == "200/(100/50/25/12)"
	assert candidate([200,10,50]) == "200/(10/50)"
	assert candidate([1000,500,100,10,2]) == "1000/(500/100/10/2)"
	assert candidate([100,200]) == "100/200"
	assert candidate([200,100,2,2]) == "200/(100/2/2)"
	assert candidate([666,222,111]) == "666/(222/111)"
	assert candidate([111,222,666]) == "111/(222/666)"
	assert candidate([2,3,4,5,6]) == "2/(3/4/5/6)"
	assert candidate([1000,500,250,25]) == "1000/(500/250/25)"
	assert candidate([10000,100,10,2]) == "10000/(100/10/2)"
	assert candidate([300,200,150,100,62]) == "300/(200/150/100/62)"
	assert candidate([100,10,1]) == "100/(10/1)"
def test_check():
	check(optimal_division)
# Metadata Difficulty: Medium
# Metadata Topics: array,math,dynamic-programming
# Metadata Coverage: 100
