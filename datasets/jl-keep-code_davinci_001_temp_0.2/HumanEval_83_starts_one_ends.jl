"""
    Given a positive integer n, return the count of the numbers of n-digit
    positive integers that start or end with 1.
    """
function starts_one_ends(n::Int64)::Int64 
    if n == 1
        return 10
    else
        return 9 * 10^(n-1)
    end
end

using Test

@testset begin

candidate = starts_one_ends;
	@test(candidate(1) == 1)
	@test(candidate(2) == 18)
	@test(candidate(3) == 180)
	@test(candidate(4) == 1800)
	@test(candidate(5) == 18000)
end
