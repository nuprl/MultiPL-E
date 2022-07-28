"""Return maximum element in the list.
    >>> max_element([1, 2, 3])
    3
    >>> max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])
    123
    """
function max_element(l::Vector{Int64})::Int64 
    max_element = l[1]
    for i in l
        if i > max_element
            max_element = i
        end
    end
    return max_element
end
max_element([1, 2, 3])
max_element([5, 3, -5, 2, -3, 3, 9, 0, 123, 1, -10])

using Test

@testset begin

candidate = max_element;
	@test(candidate([1, 2, 3]) == 3)
	@test(candidate([5, 3, -5, 2, -3, 3, 9, 0, 124, 1, -10]) == 124)
end
