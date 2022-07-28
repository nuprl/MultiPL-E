"""Return True is list elements are monotonically increasing or decreasing.
    >>> monotonic([1, 2, 4, 20])
    True
    >>> monotonic([1, 20, 4, 10])
    False
    >>> monotonic([4, 1, 0, -10])
    True
    """
function monotonic(l::Vector{Int64})::Bool 
    if l[1] < l[end]
        return true
    elseif l[1] > l[end]
        return false
    else
        return monotonic(l[2:end-1])
    end
end

using Test

@testset begin

candidate = monotonic;
	@test(candidate([1, 2, 4, 10]) == true)
	@test(candidate([1, 2, 4, 20]) == true)
	@test(candidate([1, 20, 4, 10]) == false)
	@test(candidate([4, 1, 0, -10]) == true)
	@test(candidate([4, 1, 1, 0]) == true)
	@test(candidate([1, 2, 3, 2, 5, 60]) == false)
	@test(candidate([1, 2, 3, 4, 5, 60]) == true)
	@test(candidate([9, 9, 9, 9]) == true)
end
