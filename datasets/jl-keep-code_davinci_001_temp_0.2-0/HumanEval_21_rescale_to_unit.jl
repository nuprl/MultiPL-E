""" Given list of numbers (of at least two elements), apply a linear transform to that list,
    such that the smallest number will become 0 and the largest will become 1
    >>> rescale_to_unit([1.0, 2.0, 3.0, 4.0, 5.0])
    [0.0, 0.25, 0.5, 0.75, 1.0]
    """
function rescale_to_unit(numbers::Vector{Float64})::Vector{Float64} 
    return (numbers .- minimum(numbers)) ./ (maximum(numbers) - minimum(numbers))
end

using Test

@testset begin

candidate = rescale_to_unit;
	@test(candidate([2.0, 49.9]) == [0.0, 1.0])
	@test(candidate([100.0, 49.9]) == [1.0, 0.0])
	@test(candidate([1.0, 2.0, 3.0, 4.0, 5.0]) == [0.0, 0.25, 0.5, 0.75, 1.0])
	@test(candidate([2.0, 1.0, 5.0, 3.0, 4.0]) == [0.25, 0.0, 1.0, 0.5, 0.75])
	@test(candidate([12.0, 11.0, 15.0, 13.0, 14.0]) == [0.25, 0.0, 1.0, 0.5, 0.75])
end
