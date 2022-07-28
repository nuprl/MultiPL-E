"""Return list with elements incremented by 1.
    >>> incr_list([1, 2, 3])
    [2, 3, 4]
    >>> incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [6, 4, 6, 3, 4, 4, 10, 1, 124]
    """
function incr_list(l::Vector{Int64})::Vector{Int64} 
    return [i+1 for i in l]
end
incr_list([1, 2, 3])
incr_list([5, 3, 5, 2, 3, 3, 9, 0, 123])

using Test

@testset begin

candidate = incr_list;
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([3, 2, 1]) == [4, 3, 2])
	@test(candidate([5, 2, 5, 2, 3, 3, 9, 0, 123]) == [6, 3, 6, 3, 4, 4, 10, 1, 124])
end
