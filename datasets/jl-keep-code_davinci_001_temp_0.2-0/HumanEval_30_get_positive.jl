"""Return only positive numbers in the list.
    >>> get_positive([-1, 2, -4, 5, 6])
    [2, 5, 6]
    >>> get_positive([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    [5, 3, 2, 3, 9, 123, 1]
    """
function get_positive(l::Vector{Int64})::Vector{Int64} 
    return filter(x -> x > 0, l)
end

using Test

@testset begin

candidate = get_positive;
	@test(candidate([-1, -2, 4, 5, 6]) == [4, 5, 6])
	@test(candidate([5, 3, -5, 2, 3, 3, 9, 0, 123, 1, -10]) == [5, 3, 2, 3, 3, 9, 123, 1])
	@test(candidate([-1, -2]) == Vector{Int64}([]))
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
end
