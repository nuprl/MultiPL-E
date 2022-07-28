"""
    You are given a list of integers.
    Write a function next_smallest() that returns the 2nd smallest element of the list.
    Return None if there is no such element.
    
    next_smallest([1, 2, 3, 4, 5]) == 2
    next_smallest([5, 1, 4, 3, 2]) == 2
    next_smallest([]) == None
    next_smallest([1, 1]) == None
    """
function next_smallest(lst::Vector{Int64})::Union{Int64, Nothing} 
    if length(lst) == 0
        return nothing
    end
    if length(lst) == 1
        return nothing
    end
    if length(lst) == 2
        if lst[1] < lst[2]
            return lst[1]
        else
            return nothing
        end
    end
    if lst[1] < lst[2]
        return lst[1]
    end
    if lst[1] > lst[2]
        for i in 2:length(lst)
            if lst[i] < lst[1]
                return lst[i]
            end
        end
    end
    return nothing
end
next_smallest([1, 2, 3, 4, 5])
next_smallest([5, 1, 4, 3, 2])
next_smallest([])
next_smallest([1, 1])


using Test

@testset begin

candidate = next_smallest;
	@test(candidate([1, 2, 3, 4, 5]) == 2)
	@test(candidate([5, 1, 4, 3, 2]) == 2)
	@test(candidate(Vector{Int64}([])) == nothing)
	@test(candidate([1, 1]) == nothing)
	@test(candidate([1, 1, 1, 1, 0]) == 1)
	@test(candidate([1, 1]) == nothing)
	@test(candidate([-35, 34, 12, -45]) == -35)
end
