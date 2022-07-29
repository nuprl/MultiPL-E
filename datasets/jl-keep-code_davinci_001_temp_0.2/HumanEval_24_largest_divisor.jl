""" For a given number n, find the largest number that divides n evenly, smaller than n
    >>> largest_divisor(15)
    5
    """
function largest_divisor(n::Int64)::Int64 
    for i in 1:n
        if n % i == 0
            return i
        end
    end
end

using Test

@testset begin

candidate = largest_divisor;
	@test(candidate(3) == 1)
	@test(candidate(7) == 1)
	@test(candidate(10) == 5)
	@test(candidate(100) == 50)
	@test(candidate(49) == 7)
end
