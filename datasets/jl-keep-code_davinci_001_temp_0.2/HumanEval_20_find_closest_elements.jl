""" From a supplied list of numbers (of length at least two) select and return two that are the closest to each
    other and return them in order (smaller number, larger number).
    >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.2])
    (2.0, 2.2)
    >>> find_closest_elements([1.0, 2.0, 3.0, 4.0, 5.0, 2.0])
    (2.0, 2.0)
    """
function find_closest_elements(numbers::Vector{Float64})::Tuple{Float64, Float64} 
    # your code here
end

using Test

@testset begin

candidate = find_closest_elements;
	@test(candidate([1.0, 2.0, 3.9, 4.0, 5.0, 2.2]) == (3.9, 4.0))
	@test(candidate([1.0, 2.0, 5.9, 4.0, 5.0]) == (5.0, 5.9))
	@test(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.2]) == (2.0, 2.2))
	@test(candidate([1.0, 2.0, 3.0, 4.0, 5.0, 2.0]) == (2.0, 2.0))
	@test(candidate([1.1, 2.2, 3.1, 4.1, 5.1]) == (2.2, 3.1))
end
