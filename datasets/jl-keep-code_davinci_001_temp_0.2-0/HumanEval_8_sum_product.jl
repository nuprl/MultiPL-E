""" For a given list of integers, return a tuple consisting of a sum and a product of all the integers in a list.
    Empty sum should be equal to 0 and empty product should be equal to 1.
    >>> sum_product([])
    (0, 1)
    >>> sum_product([1, 2, 3, 4])
    (10, 24)
    """
function sum_product(numbers::Vector{Int64})::Tuple{Int64, Int64} 
    if length(numbers) == 0
        return (0, 1)
    end
    sum_product(numbers) = (sum(numbers), reduce(*, numbers))
end

using Test

@testset begin

candidate = sum_product;
	@test(candidate(Vector{Int64}([])) == (0, 1))
	@test(candidate([1, 1, 1]) == (3, 1))
	@test(candidate([100, 0]) == (100, 0))
	@test(candidate([3, 5, 7]) == (15, 105))
	@test(candidate([10]) == (10, 10))
end
