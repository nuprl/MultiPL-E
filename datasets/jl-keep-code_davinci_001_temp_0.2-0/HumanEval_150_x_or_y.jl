"""A simple program which should return the value of x if n is 
    a prime number and should return the value of y otherwise.

    Examples:
    for x_or_y(7, 34, 12) == 34
    for x_or_y(15, 8, 5) == 5
    
    """
function x_or_y(n::Int64, x::Int64, y::Int64)::Int64 
    if isprime(n)
        return x
    else
        return y
    end
end

using Test

@testset begin

candidate = x_or_y;
	@test(candidate(7, 34, 12) == 34)
	@test(candidate(15, 8, 5) == 5)
	@test(candidate(3, 33, 5212) == 33)
	@test(candidate(1259, 3, 52) == 3)
	@test(candidate(7919, -1, 12) == -1)
	@test(candidate(3609, 1245, 583) == 583)
	@test(candidate(91, 56, 129) == 129)
	@test(candidate(6, 34, 1234) == 1234)
	@test(candidate(1, 2, 0) == 0)
	@test(candidate(2, 2, 0) == 2)
end
