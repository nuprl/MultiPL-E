"""
    In this Kata, you have to sort an array of non-negative integers according to
    number of ones in their binary representation in ascending order.
    For similar number of ones, sort based on decimal value.

    It must be implemented like this:
    >>> sort_array([1, 5, 2, 3, 4]) == [1, 2, 3, 4, 5]
    >>> sort_array([-2, -3, -4, -5, -6]) == [-6, -5, -4, -3, -2]
    >>> sort_array([1, 0, 2, 3, 4]) [0, 1, 2, 3, 4]
    """
function sort_array(arr::Vector{Int64})::Vector{Int64} 
    arr_sorted = []
    arr_unsorted = arr
    while length(arr_unsorted) > 0
        max_value = maximum(arr_unsorted)
        max_index = findfirst(x -> x == max_value, arr_unsorted)
        push!(arr_sorted, max_value)
        deleteat!(arr_unsorted, max_index)
    end
    return arr_sorted
end
sort_array([1, 5, 2, 3, 4])
sort_array([-2, -3, -4, -5, -6])
sort_array([1, 0, 2, 3, 4])


using Test

@testset begin

candidate = sort_array;
	@test(candidate([1, 5, 2, 3, 4]) == [1, 2, 4, 3, 5])
	@test(candidate([-2, -3, -4, -5, -6]) == [-4, -2, -6, -5, -3])
	@test(candidate([1, 0, 2, 3, 4]) == [0, 1, 2, 4, 3])
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([2, 5, 77, 4, 5, 3, 5, 7, 2, 3, 4]) == [2, 2, 4, 4, 3, 3, 5, 5, 5, 7, 77])
	@test(candidate([3, 6, 44, 12, 32, 5]) == [32, 3, 5, 6, 12, 44])
	@test(candidate([2, 4, 8, 16, 32]) == [2, 4, 8, 16, 32])
	@test(candidate([2, 4, 8, 16, 32]) == [2, 4, 8, 16, 32])
end
