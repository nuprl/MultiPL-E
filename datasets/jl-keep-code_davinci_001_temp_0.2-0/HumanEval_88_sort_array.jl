"""
    Given an array of non-negative integers, return a copy of the given array after sorting,
    you will sort the given array in ascending order if the sum( first index value, last index value) is odd,
    or sort it in descending order if the sum( first index value, last index value) is even.

    Note:
    * don't change the given array.

    Examples:
    * sort_array([]) => []
    * sort_array([5]) => [5]
    * sort_array([2, 4, 3, 0, 1, 5]) => [0, 1, 2, 3, 4, 5]
    * sort_array([2, 4, 3, 0, 1, 5, 6]) => [6, 5, 4, 3, 2, 1, 0]
    """
function sort_array(array::Vector{Int64})::Vector{Int64} 
    if length(array) == 0
        return []
    end
    if length(array) == 1
        return array
    end
    if sum(array[1], array[end]) % 2 == 0
        return sort(array, rev=true)
    else
        return sort(array)
    end
end
sort_array([2, 4, 3, 0, 1, 5])
sort_array([2, 4, 3, 0, 1, 5, 6])


using Test

@testset begin

candidate = sort_array;
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([5]) == [5])
	@test(candidate([2, 4, 3, 0, 1, 5]) == [0, 1, 2, 3, 4, 5])
	@test(candidate([2, 4, 3, 0, 1, 5, 6]) == [6, 5, 4, 3, 2, 1, 0])
	@test(candidate([2, 1]) == [1, 2])
	@test(candidate([15, 42, 87, 32, 11, 0]) == [0, 11, 15, 32, 42, 87])
	@test(candidate([21, 14, 23, 11]) == [23, 21, 14, 11])
end
