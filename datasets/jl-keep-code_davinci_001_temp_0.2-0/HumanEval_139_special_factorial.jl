"""The Brazilian factorial is defined as:
    brazilian_factorial(n) = n! * (n-1)! * (n-2)! * ... * 1!
    where n > 0

    For example:
    >>> special_factorial(4)
    288

    The function will receive an integer as input and should return the special
    factorial of this integer.
    """
function special_factorial(n::Int64)::Int64 
    if n == 0
        return 1
    else
        return n * special_factorial(n-1)
    end
end

using Test

@testset begin

candidate = special_factorial;
	@test(candidate(4) == 288)
	@test(candidate(5) == 34560)
	@test(candidate(7) == 125411328000)
	@test(candidate(1) == 1)
end
