"""Return sorted unique common elements for two lists.
    >>> common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
    [1, 5, 653]
    >>> common([5, 3, 2, 8], [3, 2])
    [2, 3]

    """
function common(l1::Vector{Int64}, l2::Vector{Int64})::Vector{Int64} 
    return sort(unique(l1 & l2))
end
common([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121])
common([5, 3, 2, 8], [3, 2])

using Test

@testset begin

candidate = common;
	@test(candidate([1, 4, 3, 34, 653, 2, 5], [5, 7, 1, 5, 9, 653, 121]) == [1, 5, 653])
	@test(candidate([5, 3, 2, 8], [3, 2]) == [2, 3])
	@test(candidate([4, 3, 2, 8], [3, 2, 4]) == [2, 3, 4])
	@test(candidate([4, 3, 2, 8], Vector{Int64}([])) == Vector{Int64}([]))
end
