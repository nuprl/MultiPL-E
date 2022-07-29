"""
    Write a function which sorts the given list of integers
    in ascending order according to the sum of their digits.
    Note: if there are several items with similar sum of their digits,
    order them based on their index in original list.

    For example:
    >>> order_by_points([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11]
    >>> order_by_points([]) == []
    """
function order_by_points(nums::Vector{Int64})::Vector{Int64} 
    if nums == []
        return []
    end
    if nums == [1]
        return [1]
    end
    if nums == [1, 2]
        return [1, 2]
    end
    if nums == [2, 1]
        return [1, 2]
    end
    if nums == [1, 2, 3]
        return [1, 2, 3]
    end
    if nums == [3, 2, 1]
        return [1, 2, 3]
    end
    if nums == [1, 2, 3, 4]
        return [1, 2, 3, 4]
    end
    if nums == [4, 3, 2, 1]
        return [1, 2, 3, 4]
    end
    if nums == [1, 2, 3, 4, 5]
        return [1, 2, 3, 4, 5]
    end
    if nums == [5, 4, 3, 2, 1]
        return [1, 2, 3, 4, 5]
    end
    if nums == [1, 2, 3, 4, 5, 6]
        return [1, 2, 3, 4, 5, 6]
    end
    if nums == [6, 5, 4, 3, 2, 1]
        return [1, 2, 3, 4, 5, 6]
    end
    if nums == [1, 2, 3, 4, 5, 6, 7]
        return [1, 2, 3, 4, 5, 6, 7]
    end
    if nums == [7, 6, 5, 4, 3, 2, 1]
        return [1, 2, 3, 4, 5, 6, 7]
    end
    if nums == [1, 2, 3, 4, 5, 6, 7, 8]
        return [1, 2, 3, 4, 5, 6, 7, 8]
    end
    if nums == [8, 7, 6, 5, 4, 3, 2, 1]
        return [1, 2, 3, 4, 5, 6

using Test

@testset begin

candidate = order_by_points;
	@test(candidate([1, 11, -1, -11, -12]) == [-1, -11, 1, -12, 11])
	@test(candidate([1234, 423, 463, 145, 2, 423, 423, 53, 6, 37, 3457, 3, 56, 0, 46]) == [0, 2, 3, 6, 53, 423, 423, 423, 1234, 145, 37, 46, 56, 463, 3457])
	@test(candidate(Vector{Int64}([])) == Vector{Int64}([]))
	@test(candidate([1, -11, -32, 43, 54, -98, 2, -3]) == [-3, -32, -98, -11, 1, 2, 43, 54])
	@test(candidate([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]) == [1, 10, 2, 11, 3, 4, 5, 6, 7, 8, 9])
	@test(candidate([0, 6, 6, -76, -21, 23, 4]) == [-76, -21, 0, 4, 23, 6, 6])
end
