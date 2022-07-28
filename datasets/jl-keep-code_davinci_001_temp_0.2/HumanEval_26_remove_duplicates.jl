""" From a list of integers, remove all elements that occur more than once.
    Keep order of elements left the same as in the input.
    >>> remove_duplicates([1, 2, 3, 2, 4])
    [1, 3, 4]
    """
function remove_duplicates(numbers::Vector{Int64})::Vector{Int64} 
    # create a set from the input list
    # convert the set back to a list
    # return the list
    return Set([i for i in numbers])
end

using Test

@testset begin

candidate = remove_duplicates;
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([1, 2, 3, 4]) == [1, 2, 3, 4])
	@test(candidate([1, 2, 3, 2, 4, 3, 5]) == [1, 4, 5])
end
