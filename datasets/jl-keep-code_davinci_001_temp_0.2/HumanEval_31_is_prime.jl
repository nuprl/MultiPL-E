"""Return true if a given number is prime, and false otherwise.
    >>> is_prime(6)
    False
    >>> is_prime(101)
    True
    >>> is_prime(11)
    True
    >>> is_prime(13441)
    True
    >>> is_prime(61)
    True
    >>> is_prime(4)
    False
    >>> is_prime(1)
    False
    """
function is_prime(n::Int64)::Bool 
    if n == 1
        return false
    elseif n == 2
        return true
    else
        for i = 2:n-1
            if n % i == 0
                return false
            end
        end
    end
    return true
end

using Test

@testset begin

candidate = is_prime;
	@test(candidate(6) == false)
	@test(candidate(101) == true)
	@test(candidate(11) == true)
	@test(candidate(13441) == true)
	@test(candidate(61) == true)
	@test(candidate(4) == false)
	@test(candidate(1) == false)
	@test(candidate(5) == true)
	@test(candidate(11) == true)
	@test(candidate(17) == true)
	@test(candidate(85) == false)
	@test(candidate(77) == false)
	@test(candidate(255379) == false)
end
