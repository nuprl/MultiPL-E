"""Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in 
    the last couple centuries. However, what people don't know is Tribonacci sequence.
    Tribonacci sequence is defined by the recurrence:
    tri(1) = 3
    tri(n) = 1 + n / 2, if n is even.
    tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd.
    For example:
    tri(2) = 1 + (2 / 2) = 2
    tri(4) = 3
    tri(3) = tri(2) + tri(1) + tri(4)
           = 2 + 3 + 3 = 8 
    You are given a non-negative integer number n, you have to a return a list of the 
    first n + 1 numbers of the Tribonacci sequence.
    Examples:
    tri(3) = [1, 3, 2, 8]
    """
function tri(n::Int64)::Vector{Int64} 
    if n == 1
        return [3]
    elseif n == 2
        return [3, 1]
    else
        trib = zeros(Int64, n + 1)
        trib[1] = 3
        trib[2] = 1
        for i in 3:n
            trib[i] = trib[i - 1] + trib[i - 2] + trib[i - 3]
        end
        return trib
    end
end
tri(3)

using Test

@testset begin

candidate = tri;
	@test(candidate(3) == [1, 3, 2, 8])
	@test(candidate(4) == [1, 3, 2, 8, 3])
	@test(candidate(5) == [1, 3, 2, 8, 3, 15])
	@test(candidate(6) == [1, 3, 2, 8, 3, 15, 4])
	@test(candidate(7) == [1, 3, 2, 8, 3, 15, 4, 24])
	@test(candidate(8) == [1, 3, 2, 8, 3, 15, 4, 24, 5])
	@test(candidate(9) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35])
	@test(candidate(20) == [1, 3, 2, 8, 3, 15, 4, 24, 5, 35, 6, 48, 7, 63, 8, 80, 9, 99, 10, 120, 11])
	@test(candidate(0) == [1])
	@test(candidate(1) == [1, 3])
end
