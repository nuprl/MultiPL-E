"""
    pairs_sum_to_zero takes a list of integers as an input.
    it returns True if there are two distinct elements in the list that
    sum to zero, and False otherwise.
    >>> pairs_sum_to_zero([1, 3, 5, 0])
    False
    >>> pairs_sum_to_zero([1, 3, -2, 1])
    False
    >>> pairs_sum_to_zero([1, 2, 3, 7])
    False
    >>> pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
    True
    >>> pairs_sum_to_zero([1])
    False
    """
function pairs_sum_to_zero(l::Vector{Int64})::Bool 
    for i in l
        if i == 0
            return true
        end
    end
    for i in l
        for j in l
            if i + j == 0
                return true
            end
        end
    end
    return false
end
pairs_sum_to_zero([1, 3, 5, 0])
pairs_sum_to_zero([1, 3, -2, 1])
pairs_sum_to_zero([1, 2, 3, 7])
pairs_sum_to_zero([2, 4, -5, 3, 5, 7])
pairs_sum_to_zero([1])

using Test

@testset begin

candidate = pairs_sum_to_zero;
	@test(candidate([1, 3, 5, 0]) == false)
	@test(candidate([1, 3, -2, 1]) == false)
	@test(candidate([1, 2, 3, 7]) == false)
	@test(candidate([2, 4, -5, 3, 5, 7]) == true)
	@test(candidate([1]) == false)
	@test(candidate([-3, 9, -1, 3, 2, 30]) == true)
	@test(candidate([-3, 9, -1, 3, 2, 31]) == true)
	@test(candidate([-3, 9, -1, 4, 2, 30]) == false)
	@test(candidate([-3, 9, -1, 4, 2, 31]) == false)
end
