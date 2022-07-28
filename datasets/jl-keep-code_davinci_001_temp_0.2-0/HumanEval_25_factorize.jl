""" Return list of prime factors of given integer in the order from smallest to largest.
    Each of the factors should be listed number of times corresponding to how many times it appeares in factorization.
    Input number should be equal to the product of all factors
    >>> factorize(8)
    [2, 2, 2]
    >>> factorize(25)
    [5, 5]
    >>> factorize(70)
    [2, 5, 7]
    """
function factorize(n::Int64)::Vector{Int64} 
    factors = Int64[]
    for i in 2:n
        while n % i == 0
            push!(factors, i)
            n = div(n, i)
        end
    end
    return factors
end
factorize(8)
factorize(25)
factorize(70)

using Test

@testset begin

candidate = factorize;
	@test(candidate(2) == [2])
	@test(candidate(4) == [2, 2])
	@test(candidate(8) == [2, 2, 2])
	@test(candidate(57) == [3, 19])
	@test(candidate(3249) == [3, 3, 19, 19])
	@test(candidate(185193) == [3, 3, 3, 19, 19, 19])
	@test(candidate(20577) == [3, 19, 19, 19])
	@test(candidate(18) == [2, 3, 3])
end
