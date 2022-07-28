"""Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13.
    >>> fizz_buzz(50)
    0
    >>> fizz_buzz(78)
    2
    >>> fizz_buzz(79)
    3
    """
function fizz_buzz(n::Int64)::Int64 
    count = 0
    for i in 1:n
        if i % 11 == 0 || i % 13 == 0
            count += string(i).count("7")
        end
    end
    return count
end
fizz_buzz(79)

using Test

@testset begin

candidate = fizz_buzz;
	@test(candidate(50) == 0)
	@test(candidate(78) == 2)
	@test(candidate(79) == 3)
	@test(candidate(100) == 3)
	@test(candidate(200) == 6)
	@test(candidate(4000) == 192)
	@test(candidate(10000) == 639)
	@test(candidate(100000) == 8026)
end
