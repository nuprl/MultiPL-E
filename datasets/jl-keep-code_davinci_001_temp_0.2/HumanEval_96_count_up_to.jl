"""Implement a function that takes an non-negative integer and returns an array of the first n
    integers that are prime numbers and less than n.
    for example:
    count_up_to(5) => [2,3]
    count_up_to(11) => [2,3,5,7]
    count_up_to(0) => []
    count_up_to(20) => [2,3,5,7,11,13,17,19]
    count_up_to(1) => []
    count_up_to(18) => [2,3,5,7,11,13,17]
    """
function count_up_to(n::Int64)::Vector{Int64} 
    if n < 0
        error("n must be non-negative")
    end
    if n == 0
        return []
    end
    primes = []
    i = 2
    while i < n
        if isprime(i)
            push!(primes, i)
        end
        i += 1
    end
    return primes
end
count_up_to(5)
count_up_to(11)
count_up_to(0)
count_up_to(20)
count_up_to(1)
count_up_to(18)
"""Implement a function that takes an array of integers and returns a new array with the integers
    sorted in ascending order. Do not use the built-in sort function.
    for example:
    sort_array([1,2,3,4,5]) => [1,2,3,4,5]
    sort_array([5,4,3,2,1]) => [1,2,3,4,5]
    sort_array([3,2,1,4,5]) => [1,2,3,4,5]
    sort_array([]) => []
    sort_array([1]) => [1]
    """

using Test

@testset begin

candidate = count_up_to;
	@test(candidate(5) == [2, 3])
	@test(candidate(6) == [2, 3, 5])
	@test(candidate(7) == [2, 3, 5])
	@test(candidate(10) == [2, 3, 5, 7])
	@test(candidate(0) == Vector{Int64}([]))
	@test(candidate(22) == [2, 3, 5, 7, 11, 13, 17, 19])
	@test(candidate(1) == Vector{Int64}([]))
	@test(candidate(18) == [2, 3, 5, 7, 11, 13, 17])
	@test(candidate(47) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43])
	@test(candidate(101) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])
end
