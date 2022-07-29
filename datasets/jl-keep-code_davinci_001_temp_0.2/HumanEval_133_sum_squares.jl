"""You are given a list of numbers.
    You need to return the sum of squared numbers in the given list,
    round each element in the list to the upper int(Ceiling) first.
    Examples:
    For lst = [1,2,3] the output should be 14
    For lst = [1,4,9] the output should be 98
    For lst = [1,3,5,7] the output should be 84
    For lst = [1.4,4.2,0] the output should be 29
    For lst = [-2.4,1,1] the output should be 6
    

    """
function sum_squares(lst::Vector{Float64})::Int64 
    lst_ceil = ceil.(lst)
    lst_ceil_int = Int64.(lst_ceil)
    lst_ceil_int_sq = lst_ceil_int.^2
    sum_lst_ceil_int_sq = sum(lst_ceil_int_sq)
    return sum_lst_ceil_int_sq
end

using Test

@testset begin

candidate = sum_squares;
	@test(candidate([1.0, 2.0, 3.0]) == 14)
	@test(candidate([1.0, 2.0, 3.0]) == 14)
	@test(candidate([1.0, 3.0, 5.0, 7.0]) == 84)
	@test(candidate([1.4, 4.2, 0.0]) == 29)
	@test(candidate([-2.4, 1.0, 1.0]) == 6)
	@test(candidate([100.0, 1.0, 15.0, 2.0]) == 10230)
	@test(candidate([10000.0, 10000.0]) == 200000000)
	@test(candidate([-1.4, 4.6, 6.3]) == 75)
	@test(candidate([-1.4, 17.9, 18.9, 19.9]) == 1086)
	@test(candidate([0.0]) == 0)
	@test(candidate([-1.0]) == 1)
	@test(candidate([-1.0, 1.0, 0.0]) == 2)
end
