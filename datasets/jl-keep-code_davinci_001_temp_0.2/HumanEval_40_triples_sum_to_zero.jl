"""
    triples_sum_to_zero takes a list of integers as an input.
    it returns True if there are three distinct elements in the list that
    sum to zero, and False otherwise.

    >>> triples_sum_to_zero([1, 3, 5, 0])
    False
    >>> triples_sum_to_zero([1, 3, -2, 1])
    True
    >>> triples_sum_to_zero([1, 2, 3, 7])
    False
    >>> triples_sum_to_zero([2, 4, -5, 3, 9, 7])
    True
    >>> triples_sum_to_zero([1])
    False
    """
function triples_sum_to_zero(l::Vector{Int64})::Bool 
    for i in 1:length(l)
        for j in 1:length(l)
            for k in 1:length(l)
                if i != j && i != k && j != k
                    if l[i] + l[j] + l[k] == 0
                        return true
                    end
                end
            end
        end
    end
    return false
end

using Test

@testset begin

candidate = triples_sum_to_zero;
	@test(candidate([1, 3, 5, 0]) == false)
	@test(candidate([1, 3, 5, -1]) == false)
	@test(candidate([1, 3, -2, 1]) == true)
	@test(candidate([1, 2, 3, 7]) == false)
	@test(candidate([1, 2, 5, 7]) == false)
	@test(candidate([2, 4, -5, 3, 9, 7]) == true)
	@test(candidate([1]) == false)
	@test(candidate([1, 3, 5, -100]) == false)
	@test(candidate([100, 3, 5, -100]) == false)
end
