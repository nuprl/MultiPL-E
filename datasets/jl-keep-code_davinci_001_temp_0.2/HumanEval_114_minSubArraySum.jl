"""
    Given an array of integers nums, find the minimum sum of any non-empty sub-array
    of nums.
    Example
    minSubArraySum([2, 3, 4, 1, 2, 4]) == 1
    minSubArraySum([-1, -2, -3]) == -6
    """
function minSubArraySum(nums::Vector{Int64})::Int64 
    min_sum = nums[1]
    sum = 0
    for i in nums
        sum += i
        if sum < min_sum
            min_sum = sum
        end
    end
    return min_sum
end

using Test

@testset begin

candidate = minSubArraySum;
	@test(candidate([2, 3, 4, 1, 2, 4]) == 1)
	@test(candidate([-1, -2, -3]) == -6)
	@test(candidate([-1, -2, -3, 2, -10]) == -14)
	@test(candidate([-9999999999999999]) == -9999999999999999)
	@test(candidate([0, 10, 20, 1000000]) == 0)
	@test(candidate([-1, -2, -3, 10, -5]) == -6)
	@test(candidate([100, -1, -2, -3, 10, -5]) == -6)
	@test(candidate([10, 11, 13, 8, 3, 4]) == 3)
	@test(candidate([100, -33, 32, -1, 0, -2]) == -33)
	@test(candidate([-10]) == -10)
	@test(candidate([7]) == 7)
	@test(candidate([1, -1]) == -1)
end
