"""Return True if all numbers in the list l are below threshold t.
    >>> below_threshold([1, 2, 4, 10], 100)
    True
    >>> below_threshold([1, 20, 4, 10], 5)
    False
    """
function below_threshold(l::Vector{Int64}, t::Int64)::Bool 
    for i in l
        if i > t
            return false
        end
    end
    return true
end

using Test

@testset begin

candidate = below_threshold;
	@test(candidate([1, 2, 4, 10], 100) == true)
	@test(candidate([1, 20, 4, 10], 5) == false)
	@test(candidate([1, 20, 4, 10], 21) == true)
	@test(candidate([1, 20, 4, 10], 22) == true)
	@test(candidate([1, 8, 4, 10], 11) == true)
	@test(candidate([1, 8, 4, 10], 10) == false)
end
