""" Insert a number 'delimeter' between every two consecutive elements of input list `numbers'
    >>> intersperse([], 4)
    []
    >>> intersperse([1, 2, 3], 4)
    [1, 4, 2, 4, 3]
    """
function intersperse(numbers::Vector{Int64}, delimeter::Int64)::Vector{Int64} 
    if length(numbers) == 0
        return numbers
    end
    if length(numbers) == 1
        return [numbers[1]]
    end
    return [numbers[1]] <> [delimeter] <> intersperse(numbers[2:end], delimeter)
end

using Test

@testset begin

candidate = intersperse;
	@test(candidate(Vector{Int64}([]), 7) == Vector{Int64}([]))
	@test(candidate([5, 6, 3, 2], 8) == [5, 8, 6, 8, 3, 8, 2])
	@test(candidate([2, 2, 2], 2) == [2, 2, 2, 2, 2])
end
