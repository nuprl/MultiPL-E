"""Return median of elements in the list l.
    >>> median([3, 1, 2, 4, 5])
    3
    >>> median([-10, 4, 6, 1000, 10, 20])
    15.0
    """
function median(l::Vector{Int64})::Float64 
    sort!(l)
    if length(l) % 2 == 0
        return (l[length(l) ÷ 2] + l[length(l) ÷ 2 - 1]) / 2
    else
        return l[length(l) ÷ 2]
    end
end

using Test

@testset begin

candidate = median;
	@test(candidate([3, 1, 2, 4, 5]) == 3)
	@test(candidate([-10, 4, 6, 1000, 10, 20]) == 8.0)
	@test(candidate([5]) == 5)
	@test(candidate([6, 5]) == 5.5)
	@test(candidate([8, 1, 3, 9, 9, 2, 7]) == 7)
end
