"""Return the largest prime factor of n. Assume n > 1 and is not a prime.
    >>> largest_prime_factor(13195)
    29
    >>> largest_prime_factor(2048)
    2
    """
function largest_prime_factor(n::Int64)::Int64 
    i = 2
    while i <= n
        if n % i == 0
            n = n / i
        else
            i = i + 1
        end
    end
    return i
end
largest_prime_factor(13195)
largest_prime_factor(2048)

using Test

@testset begin

candidate = largest_prime_factor;
	@test(candidate(15) == 5)
	@test(candidate(27) == 3)
	@test(candidate(63) == 7)
	@test(candidate(330) == 11)
	@test(candidate(13195) == 29)
end
