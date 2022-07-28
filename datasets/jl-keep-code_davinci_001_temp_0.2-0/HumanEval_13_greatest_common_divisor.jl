""" Return a greatest common divisor of two integers a and b
    >>> greatest_common_divisor(3, 5)
    1
    >>> greatest_common_divisor(25, 15)
    5
    """
function greatest_common_divisor(a::Int64, b::Int64)::Int64 
    if a == 0
        return b
    elseif b == 0
        return a
    elseif a >= b
        return greatest_common_divisor(a%b, b)
    else
        return greatest_common_divisor(a, b%a)
    end
end

using Test

@testset begin

candidate = greatest_common_divisor;
	@test(candidate(3, 7) == 1)
	@test(candidate(10, 15) == 5)
	@test(candidate(49, 14) == 7)
	@test(candidate(144, 60) == 12)
end
