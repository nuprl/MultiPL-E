""" From a given list of integers, generate a list of rolling maximum element found until given moment
    in the sequence.
    >>> rolling_max([1, 2, 3, 2, 3, 4, 2])
    [1, 2, 3, 3, 3, 4, 4]
    """
function rolling_max(numbers::Vector{Int64})::Vector{Int64} 
    rolling_max_list = []
    for i in 1:length(numbers)
        if i == 1
            push!(rolling_max_list, numbers[i])
        else
            push!(rolling_max_list, max(numbers[1:i]))
        end
    end
    return rolling_max_list
end
rolling_max([1, 2, 3, 2, 3, 4, 2])


using Test

@testset begin

candidate = rolling_max;
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([1, 2, 3, 4]) == [1, 2, 3, 4])
	@test(candidate([4, 3, 2, 1]) == [4, 4, 4, 4])
	@test(candidate([3, 2, 3, 100, 3]) == [3, 3, 3, 100, 100])
end
