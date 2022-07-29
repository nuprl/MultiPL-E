""" Implement the function f that takes n as a parameter,
    and returns a list of size n, such that the value of the element at index i is the factorial of i if i is even
    or the sum of numbers from 1 to i otherwise.
    i starts from 1.
    the factorial of i is the multiplication of the numbers from 1 to i (1 * 2 * ... * i).
    Example:
    f(5) == [1, 2, 6, 24, 15]
    """
function f(n::Int64)::Vector{Int64} 
    l = zeros(Int64, n)
    for i in 1:n
        if i % 2 == 0
            l[i] = factorial(i)
        else
            l[i] = sum(1:i)
        end
    end
    return l
end

using Test

@testset begin

candidate = f;
	@test(candidate(5) == [1, 2, 6, 24, 15])
	@test(candidate(7) == [1, 2, 6, 24, 15, 720, 28])
	@test(candidate(1) == [1])
	@test(candidate(3) == [1, 2, 6])
end
