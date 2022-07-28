"""
    Given two positive integers a and b, return the even digits between a
    and b, in ascending order.

    For example:
    generate_integers(2, 8) => [2, 4, 6, 8]
    generate_integers(8, 2) => [2, 4, 6, 8]
    generate_integers(10, 14) => []
    """
function generate_integers(a::Int64, b::Int64)::Vector{Int64} 
    if a > b
        return generate_integers(b, a)
    end
    if a % 2 == 1
        a += 1
    end
    if b % 2 == 1
        b -= 1
    end
    return collect(a:2:b)
end

using Test

@testset begin

candidate = generate_integers;
	@test(candidate(2, 10) == [2, 4, 6, 8])
	@test(candidate(10, 2) == [2, 4, 6, 8])
	@test(candidate(132, 2) == [2, 4, 6, 8])
	@test(candidate(17, 89) == Vector{Int64}([]))
end
