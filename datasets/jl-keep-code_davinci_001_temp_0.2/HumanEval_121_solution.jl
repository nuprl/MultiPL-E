"""Given a non-empty list of integers, return the sum of all of the odd elements that are in even positions.
    

    Examples
    solution([5, 8, 7, 1]) ==> 12
    solution([3, 3, 3, 3, 3]) ==> 9
    solution([30, 13, 24, 321]) ==>0
    """
function solution(lst::Vector{Int64})::Int64 
    if length(lst) == 0
        return 0
    else
        return sum(lst[1:2:end])
    end
end
solution([5, 8, 7, 1])
solution([3, 3, 3, 3, 3])
solution([30, 13, 24, 321])


using Test

@testset begin

candidate = solution;
	@test(candidate([5, 8, 7, 1]) == 12)
	@test(candidate([3, 3, 3, 3, 3]) == 9)
	@test(candidate([30, 13, 24, 321]) == 0)
	@test(candidate([5, 9]) == 5)
	@test(candidate([2, 4, 8]) == 0)
	@test(candidate([30, 13, 23, 32]) == 23)
	@test(candidate([3, 13, 2, 9]) == 3)
end
