"""
    Given a list of numbers, return the sum of squares of the numbers
    in the list that are odd. Ignore numbers that are negative or not integers.
    
    double_the_difference([1, 3, 2, 0]) == 1 + 9 + 0 + 0 = 10
    double_the_difference([-1, -2, 0]) == 0
    double_the_difference([9, -2]) == 81
    double_the_difference([0]) == 0  
   
    If the input list is empty, return 0.
    """
function double_the_difference(lst::Vector{Float64})::Int64 
    sum = 0
    for i in lst
        if i % 2 != 0
            sum += i^2
        end
    end
    return sum
end
double_the_difference([1, 3, 2, 0])
double_the_difference([-1, -2, 0])
double_the_difference([9, -2])
double_the_difference([0])
double_the_difference([])


using Test

@testset begin

candidate = double_the_difference;
	@test(candidate(Vector{Float64}([])) == 0)
	@test(candidate([5.0, 4.0]) == 25)
	@test(candidate([0.1, 0.2, 0.3]) == 0)
	@test(candidate([-10.0, -20.0, -30.0]) == 0)
	@test(candidate([-1.0, -2.0, 8.0]) == 0)
	@test(candidate([0.2, 3.0, 5.0]) == 34)
	@test(candidate([-9.0, -7.0, -5.0, -3.0, -1.0, 1.0, 3.0, 5.0, 7.0, 9.0]) == 165)
end
