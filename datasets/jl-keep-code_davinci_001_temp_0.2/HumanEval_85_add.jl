"""Given a non-empty list of integers lst. add the even elements that are at odd indices..


    Examples:
        add([4, 2, 6, 7]) ==> 2 
    """
function add(lst::Vector{Int64})::Int64 
    sum = 0
    for i in 1:length(lst)
        if i % 2 != 0
            sum += lst[i]
        end
    end
    return sum
end
add([4, 2, 6, 7])

using Test

@testset begin

candidate = add;
	@test(candidate([4, 88]) == 88)
	@test(candidate([4, 5, 6, 7, 2, 122]) == 122)
	@test(candidate([4, 0, 6, 7]) == 0)
	@test(candidate([4, 4, 6, 8]) == 12)
end
