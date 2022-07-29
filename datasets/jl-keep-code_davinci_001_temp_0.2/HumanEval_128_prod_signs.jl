"""
    You are given an array arr of integers and you need to return
    sum of magnitudes of integers multiplied by product of all signs
    of each number in the array, represented by 1, -1 or 0.
    Note: return None for empty arr.

    Example:
    >>> prod_signs([1, 2, 2, -4]) == -9
    >>> prod_signs([0, 1]) == 0
    >>> prod_signs([]) == None
    """
function prod_signs(arr::Vector{Int64})::Union{Int64, Nothing} 
    if length(arr) == 0
        return nothing
    end
    prod = 1
    sum = 0
    for i in arr
        prod = prod * i
        sum = sum + abs(i)
    end
    return prod * sum
end

using Test

@testset begin

candidate = prod_signs;
	@test(candidate([1, 2, 2, -4]) == -9)
	@test(candidate([0, 1]) == 0)
	@test(candidate([1, 1, 1, 2, 3, -1, 1]) == -10)
	@test(candidate(Vector{Int64}([])) == nothing)
	@test(candidate([2, 4, 1, 2, -1, -1, 9]) == 20)
	@test(candidate([-1, 1, -1, 1]) == 4)
	@test(candidate([-1, 1, 1, 1]) == -4)
	@test(candidate([-1, 1, 1, 0]) == 0)
end
