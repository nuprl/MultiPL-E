"""
    Given an array arr of integers, find the minimum number of elements that
    need to be changed to make the array palindromic. A palindromic array is an array that
    is read the same backwards and forwards. In one change, you can change one element to any other element.

    For example:
    smallest_change([1,2,3,5,4,7,9,6]) == 4
    smallest_change([1, 2, 3, 4, 3, 2, 2]) == 1
    smallest_change([1, 2, 3, 2, 1]) == 0
    """
function smallest_change(arr::Vector{Int64})::Int64 
    # Write your code here
    return 0
end

using Test

@testset begin

candidate = smallest_change;
	@test(candidate([1, 2, 3, 5, 4, 7, 9, 6]) == 4)
	@test(candidate([1, 2, 3, 4, 3, 2, 2]) == 1)
	@test(candidate([1, 4, 2]) == 1)
	@test(candidate([1, 4, 4, 2]) == 1)
	@test(candidate([1, 2, 3, 2, 1]) == 0)
	@test(candidate([3, 1, 1, 3]) == 0)
	@test(candidate([1]) == 0)
	@test(candidate([0, 1]) == 1)
end
