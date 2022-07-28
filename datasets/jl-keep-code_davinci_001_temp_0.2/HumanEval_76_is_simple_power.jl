"""Your task is to write a function that returns true if a number x is a simple
    power of n and false in other cases.
    x is a simple power of n if n**int=x
    For example:
    is_simple_power(1, 4) => true
    is_simple_power(2, 2) => true
    is_simple_power(8, 2) => true
    is_simple_power(3, 2) => false
    is_simple_power(3, 1) => false
    is_simple_power(5, 3) => false
    """
function is_simple_power(x::Int64, n::Int64)::Bool 
    if n == 1
        return true
    elseif n == 0
        return false
    elseif x == 1
        return true
    elseif x == 0
        return false
    elseif x % n == 0
        return is_simple_power(x/n, n)
    else
        return false
    end
end

using Test

@testset begin

candidate = is_simple_power;
	@test(candidate(16, 2) == true)
	@test(candidate(143214, 16) == false)
	@test(candidate(4, 2) == true)
	@test(candidate(9, 3) == true)
	@test(candidate(16, 4) == true)
	@test(candidate(24, 2) == false)
	@test(candidate(128, 4) == false)
	@test(candidate(12, 6) == false)
	@test(candidate(1, 1) == true)
	@test(candidate(1, 12) == true)
end
