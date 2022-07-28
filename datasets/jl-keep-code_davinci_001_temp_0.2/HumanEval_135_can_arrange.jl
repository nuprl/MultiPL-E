"""Create a function which returns the largest index of an element which
    is not greater than or equal to the element immediately preceding it. If
    no such element exists then return -1. The given array will not contain
    duplicate values.

    Examples:
    can_arrange([1,2,4,3,5]) = 3
    can_arrange([1,2,3]) = -1
    """
function can_arrange(arr::Vector{Int64})::Int64 
    for i in 1:length(arr)
        if arr[i] < arr[i-1]
            return i-1
        end
    end
    return -1
end

using Test

@testset begin

candidate = can_arrange;
	@test(candidate([1, 2, 4, 3, 5]) == 3)
	@test(candidate([1, 2, 4, 5]) == -1)
	@test(candidate([1, 4, 2, 5, 6, 7, 8, 9, 10]) == 2)
	@test(candidate([4, 8, 5, 7, 3]) == 4)
	@test(candidate(Vector{Int64}([])) == -1)
end
