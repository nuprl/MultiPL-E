"""Given a list of positive integers x. return a sorted list of all 
    elements that hasn't any even digit.

    Note: Returned list should be sorted in increasing order.
    
    For example:
    >>> unique_digits([15, 33, 1422, 1])
    [1, 15, 33]
    >>> unique_digits([152, 323, 1422, 10])
    []
    """
function unique_digits(x::Vector{Int64})::Vector{Int64} 
    return filter(x -> !any(digits(x) .% 2 .== 0), x)
end
unique_digits([15, 33, 1422, 1])
unique_digits([152, 323, 1422, 10])

using Test

@testset begin

candidate = unique_digits;
	@test(candidate([15, 33, 1422, 1]) == [1, 15, 33])
	@test(candidate([152, 323, 1422, 10]) == Vector{Int64}([]))
	@test(candidate([12345, 2033, 111, 151]) == [111, 151])
	@test(candidate([135, 103, 31]) == [31, 135])
end
