"""
    Create a function that returns a tuple (a, b), where 'a' is
    the largest of negative integers, and 'b' is the smallest
    of positive integers in a list.
    If there is no negative or positive integers, return them as None.

    Examples:
    largest_smallest_integers([2, 4, 1, 3, 5, 7]) == (None, 1)
    largest_smallest_integers([]) == (None, None)
    largest_smallest_integers([0]) == (None, None)
    """
function largest_smallest_integers(lst::Vector{Int64})::Tuple{Union{Int64, Nothing}, Union{Int64, Nothing}} 
    if isempty(lst)
        return (nothing, nothing)
    end
    if all(x -> x < 0, lst)
        return (nothing, maximum(lst))
    elseif all(x -> x > 0, lst)
        return (minimum(lst), nothing)
    else
        return (maximum(filter(x -> x < 0, lst)), minimum(filter(x -> x > 0, lst)))
    end
end

using Test

@testset begin

candidate = largest_smallest_integers;
	@test(candidate([2, 4, 1, 3, 5, 7]) == (nothing, 1))
	@test(candidate([2, 4, 1, 3, 5, 7, 0]) == (nothing, 1))
	@test(candidate([1, 3, 2, 4, 5, 6, -2]) == (-2, 1))
	@test(candidate([4, 5, 3, 6, 2, 7, -7]) == (-7, 2))
	@test(candidate([7, 3, 8, 4, 9, 2, 5, -9]) == (-9, 2))
	@test(candidate(Vector{Int64}([])) == (nothing, nothing))
	@test(candidate([0]) == (nothing, nothing))
	@test(candidate([-1, -3, -5, -6]) == (-1, nothing))
	@test(candidate([-1, -3, -5, -6, 0]) == (-1, nothing))
	@test(candidate([-6, -4, -4, -3, 1]) == (-3, 1))
	@test(candidate([-6, -4, -4, -3, -100, 1]) == (-3, 1))
end
