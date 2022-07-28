"""
    Given a list of numbers, return whether or not they are sorted
    in ascending order. If list has more than 1 duplicate of the same
    number, return False. Assume no negative numbers and only integers.

    Examples
    is_sorted([5]) ➞ True
    is_sorted([1, 2, 3, 4, 5]) ➞ True
    is_sorted([1, 3, 2, 4, 5]) ➞ False
    is_sorted([1, 2, 3, 4, 5, 6]) ➞ True
    is_sorted([1, 2, 3, 4, 5, 6, 7]) ➞ True
    is_sorted([1, 3, 2, 4, 5, 6, 7]) ➞ False
    is_sorted([1, 2, 2, 3, 3, 4]) ➞ True
    is_sorted([1, 2, 2, 2, 3, 4]) ➞ False
    """
function is_sorted(lst::Vector{Int64})::Bool 
    if length(lst) == 1
        return true
    else
        for i in 1:length(lst)-1
            if lst[i] > lst[i+1]
                return false
            end
        end
        return true
    end
end

using Test

@testset begin

candidate = is_sorted;
	@test(candidate([5]) == true)
	@test(candidate([1, 2, 3, 4, 5]) == true)
	@test(candidate([1, 3, 2, 4, 5]) == false)
	@test(candidate([1, 2, 3, 4, 5, 6]) == true)
	@test(candidate([1, 2, 3, 4, 5, 6, 7]) == true)
	@test(candidate([1, 3, 2, 4, 5, 6, 7]) == false)
	@test(candidate(Vector{Int64}([])) == true)
	@test(candidate([1]) == true)
	@test(candidate([3, 2, 1]) == false)
	@test(candidate([1, 2, 2, 2, 3, 4]) == false)
	@test(candidate([1, 2, 3, 3, 3, 4]) == false)
	@test(candidate([1, 2, 2, 3, 3, 4]) == true)
	@test(candidate([1, 2, 3, 4]) == true)
end
