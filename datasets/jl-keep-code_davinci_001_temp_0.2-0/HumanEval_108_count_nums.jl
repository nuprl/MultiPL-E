"""
    Write a function count_nums which takes an array of integers and returns
    the number of elements which has a sum of digits > 0.
    If a number is negative, then its first signed digit will be negative:
    e.g. -123 has signed digits -1, 2, and 3.
    >>> count_nums([]) == 0
    >>> count_nums([-1, 11, -11]) == 1
    >>> count_nums([1, 1, 2]) == 3
    """
function count_nums(arr::Vector{Int64})::Int64 
    count = 0
    for i in arr
        if sum(digits(i)) > 0
            count += 1
        end
    end
    return count
end

using Test

@testset begin

candidate = count_nums;
	@test(candidate(Vector{Int64}([])) == 0)
	@test(candidate([-1, -2, 0]) == 0)
	@test(candidate([1, 1, 2, -2, 3, 4, 5]) == 6)
	@test(candidate([1, 6, 9, -6, 0, 1, 5]) == 5)
	@test(candidate([1, 100, 98, -7, 1, -1]) == 4)
	@test(candidate([12, 23, 34, -45, -56, 0]) == 5)
	@test(candidate([0, 1]) == 1)
	@test(candidate([1]) == 1)
end
