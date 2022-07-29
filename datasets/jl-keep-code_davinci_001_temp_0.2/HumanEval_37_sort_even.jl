"""This function takes a list l and returns a list l' such that
    l' is identical to l in the odd indicies, while its values at the even indicies are equal
    to the values of the even indicies of l, but sorted.
    >>> sort_even([1, 2, 3])
    [1, 2, 3]
    >>> sort_even([5, 6, 3, 4])
    [3, 6, 5, 4]
    """
function sort_even(l::Vector{Int64})::Vector{Int64} 
    l_even = l[1:2:length(l)]
    l_odd = l[2:2:length(l)]
    l_even_sorted = sort(l_even)
    l_odd_sorted = sort(l_odd)
    l_sorted = vcat(l_even_sorted, l_odd_sorted)
    return l_sorted
end
sort_even([1, 2, 3])
sort_even([5, 6, 3, 4])

using Test

@testset begin

candidate = sort_even;
	@test(candidate([1, 2, 3]) == [1, 2, 3])
	@test(candidate([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10]) == [-10, 3, -5, 2, -3, 3, 5, 0, 9, 1, 123])
	@test(candidate([5, 8, -12, 4, 23, 2, 3, 11, 12, -10]) == [-12, 8, 3, 4, 5, 2, 12, 11, 23, -10])
end
