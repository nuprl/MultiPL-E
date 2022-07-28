"""Write a function that takes an array of numbers as input and returns 
    the number of elements in the array that are greater than 10 and both 
    first and last digits of a number are odd (1, 3, 5, 7, 9).
    For example:
    specialFilter([15, -73, 14, -15]) => 1 
    specialFilter([33, -2, -3, 45, 21, 109]) => 2
    """
function specialFilter(nums::Vector{Int64})::Int64 
    count = 0
    for i in nums
        if i > 10 && i % 10 > 5
            count += 1
        end
    end
    return count
end

using Test

@testset begin

candidate = specialFilter;
	@test(candidate([5, -2, 1, -5]) == 0)
	@test(candidate([15, -73, 14, -15]) == 1)
	@test(candidate([33, -2, -3, 45, 21, 109]) == 2)
	@test(candidate([43, -12, 93, 125, 121, 109]) == 4)
	@test(candidate([71, -2, -33, 75, 21, 19]) == 3)
	@test(candidate([1]) == 0)
	@test(candidate(Vector{Int64}([])) == 0)
end
