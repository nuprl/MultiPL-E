"""Return sorted unique elements in a list
    >>> unique([5, 3, 5, 2, 3, 3, 9, 0, 123])
    [0, 2, 3, 5, 9, 123]
    """
function unique(l::Vector{Int64})::Vector{Int64} 
    return sort(Set(l))
end
unique([5, 3, 5, 2, 3, 3, 9, 0, 123])

using Test

@testset begin

candidate = unique;
	@test(candidate([5, 3, 5, 2, 3, 3, 9, 0, 123]) == [0, 2, 3, 5, 9, 123])
end
